# -*- coding: utf-8 -*-
#
# Copyright 2021 -- 2023 WhiteMech
#
# ------------------------------
#
# This file is part of Plan4Past.
#
# Plan4Past is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Plan4Past is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with Plan4Past.  If not, see <https://www.gnu.org/licenses/>.
#

"""Compiler from PDDL Domain and PPLTL into a new PDDL domain."""
from typing import AbstractSet, Dict, List, Optional, Set, Tuple, cast

from pddl.core import Action, Domain, Problem, Requirements
from pddl.logic import Constant
from pddl.logic.base import And
from pddl.logic.base import Formula as PddlFormula
from pddl.logic.base import Not
from pddl.logic.effects import AndEffect, When
from pddl.logic.predicates import DerivedPredicate, Predicate
from pylogics.syntax.base import Formula, Logic
from pylogics.syntax.pltl import Atomic as PLTLAtomic
from pylogics.syntax.pltl import FalseFormula

from plan4past.constants import (
    ACHIEVE_GOAL_ACTION,
    CHECK_PREDICATE,
    EVALUATE_PNF_ACTION,
    GOAL_PREDICATE,
    PNF,
    TRUE_ATOM,
    TRUE_PREDICATE,
)
from plan4past.exceptions import ProblemUnsolvableException
from plan4past.helpers.compilation_helper import CompilationManager, YesterdayAtom, ValAtom
from plan4past.helpers.utils import (
    check_,
    default_mapping,
)
from plan4past.helpers.formula_helper import QUOTED_ATOM, val_condition
from plan4past.utils.dnf_visitor import dnf
from plan4past.utils.nnf_visitor import nnf
from plan4past.utils.pylogics2pddl import Pylogics2PddlTranslator
from plan4past.utils.rewrite_formula_visitor import rewrite


class Compiler:
    """Compiler of PPLTL goals into PDDL."""

    def __init__(
        self,
        domain: Domain,
        problem: Problem,
        formula: Formula,
        from_atoms_to_fluent: Optional[Dict[PLTLAtomic, Predicate]] = None,
    ) -> None:
        """
        Initialize the compiler.

        :param domain: the domain
        :param problem: the problem
        :param formula: the formula
        :param from_atoms_to_fluent: optional mapping from atoms to fluent
        """
        self.domain = domain
        self.problem = problem
        self.formula = rewrite(formula)
        if from_atoms_to_fluent:
            self.from_atoms_to_fluent = from_atoms_to_fluent
            self.validate_mapping(domain, formula, from_atoms_to_fluent)
        else:
            self.from_atoms_to_fluent = default_mapping(self.formula)

        check_(self.formula.logic == Logic.PLTL, "only PPLTL is supported!")

        self._executed: bool = False
        self._result_domain: Optional[Domain] = None
        self._result_problem: Optional[Problem] = None

        self._derived_predicates: Set[DerivedPredicate] = set()

    @classmethod
    def validate_mapping(
        cls,
        _domain: Domain,
        _formula: Formula,
        from_atoms_to_fluent: Dict[PLTLAtomic, Predicate],
    ) -> None:
        """
        Check that the mapping is valid wrt the problem instance.

        In particular:
        - check that all the formula atoms are covered (TODO)
        - check that all the atoms are legal wrt the formula
        - check that the fluents are legal wrt the domain

        :param _domain: the domain
        :param _formula: the formula
        :param from_atoms_to_fluent: the mapping
        """
        for _atom, fluent in from_atoms_to_fluent.items():
            check_(all(isinstance(t, Constant) for t in fluent.terms))

    @property
    def result(self) -> Tuple[Domain, Problem]:
        """
        Get the result.

        :return: a triple (domain, problem, mapping); the mapping might be None
        """
        if self._result_domain is None or self._result_problem is None:
            raise ValueError("compilation not executed yet")
        return self._result_domain, self._result_problem

    def compile(self):
        """Compute the new domain and the new problem."""
        self.cm = CompilationManager(self.formula)
        self._quoted_map = self.cm.quoted_map
        self._yesterday_mapping = self.cm.get_yesterday_mapping()
        self._translation_dictionary = self.cm.quoted_map.copy()
        self._translation_dictionary.update(self.cm.val_map)
        self._translator = Pylogics2PddlTranslator(
            cast(Dict[YesterdayAtom, PLTLAtomic], self._translation_dictionary),
            self.from_atoms_to_fluent,
        )
        if not self._executed:
            self._compile_domain()
            self._compile_problem()
            self._executed = True

    def pylogics2pddl(self, formula: Formula) -> PddlFormula:
        """Convert pylogics formula into PDDL formula."""
        check_(self._translator is not None, "compilation not executed yet")
        return cast(Pylogics2PddlTranslator, self._translator).translate(formula)

    def _compile_domain(self):
        """Compute the new domain."""


        quoted_atoms = [yesterday_atom for yesterday_atom in self.cm.quoted_map.keys()]
        val_atoms = [val_atom for val_atom in self.cm.val_map.keys()]

        new_whens = []
        for quoted_atom in quoted_atoms:
            val_atom = ValAtom(quoted_atom.formula)
            new_whens.append(self.effect_conversion((val_atom, quoted_atom), positive=True))
            new_whens.append(self.effect_conversion((val_atom, quoted_atom), positive=False))

        new_predicates = [
            *list(map(self.pylogics2pddl, quoted_atoms)),
            *list(map(self.pylogics2pddl, val_atoms))
        ]

        new_derived_predicates = [
            DerivedPredicate(self.pylogics2pddl(val_atom), self.pylogics2pddl(val_condition(val_atom)))
            for val_atom in val_atoms
        ]

        domain_actions = _update_domain_actions_det(self.domain.actions, new_whens)

        self._result_domain = Domain(
            name=self.domain.name,
            requirements=[
                *self.domain.requirements,
                Requirements.DERIVED_PREDICATES,
                Requirements.CONDITIONAL_EFFECTS,
                Requirements.NEG_PRECONDITION,
            ],
            types=self.domain.types,
            constants=self.domain.constants,
            predicates=[*self.domain.predicates, *new_predicates],
            derived_predicates=[
                *self.domain.derived_predicates,
                *new_derived_predicates,
            ],
            actions=domain_actions,
        )
    
    def effect_conversion(self, effect: Tuple, positive) -> When:
        """Convert effect."""
        condition = self.pylogics2pddl(effect[0])
        effect = self.pylogics2pddl(effect[1])
        return When(condition, effect) if positive else When(Not(condition), Not(effect))

    def _compile_problem(self):
        """Compute the new problem."""
        new_init = ({*self.problem.init, TRUE_PREDICATE})

        self._result_problem = Problem(
            name=self.problem.name,
            domain_name=self.domain.name,
            requirements=self.problem.requirements,
            objects=[*self.problem.objects],
            init=new_init,
            goal=And(self.pylogics2pddl(ValAtom(self.formula))),
        )


def _update_domain_actions_det(
    actions: AbstractSet[Action], progression: Set[When]
) -> Set[Action]:
    """Update domain actions."""
    new_actions = set()
    for action in actions:
        if isinstance(action.effect, AndEffect):
            previous_effects = action.effect.operands
            new_actions.add(
                Action(
                    name=action.name,
                    parameters=[*action.parameters],
                    precondition=And(action.precondition),
                    effect=AndEffect(*previous_effects, *progression),
                )
            )
        else:
            new_actions.add(
                Action(
                    name=action.name,
                    parameters=[*action.parameters],
                    precondition=And(action.precondition),
                    effect=AndEffect(action.effect, *progression),
                )
            )
    return new_actions


class ADLCompiler(Compiler):
    """Compiler of PPLTL goals into PDDL with only ADL constructs."""

    def __init__(
        self,
        domain: Domain,
        problem: Problem,
        formula: Formula,
        from_atoms_to_fluent: Optional[Dict[PLTLAtomic, Predicate]] = None,
        evaluate_pnf: bool = True,
        simplify_disj_goal: bool = False,
    ) -> None:
        """

        Initialize the compiler.

        :param domain: the domain
        :param problem: the problem
        :param formula: the formula
        :param from_atoms_to_fluent: optional mapping from atoms to fluent
        :param evaluate_pnf: if True, update domain action using the "check" optimization
        :param simplify_disj_goal: if True, delete disjunction in goal
        """
        super().__init__(domain, problem, formula, from_atoms_to_fluent)

        if isinstance(self.formula, FalseFormula):
            raise ProblemUnsolvableException(
                "The goal formula can be simplified to FALSE. The problem admits no solution."
            )

        self._yesterday_mapping = None
        self._translator = None
        self.evaluate_pnf = evaluate_pnf
        self._yesterday_dictionary: Optional[Dict[YesterdayAtom, PLTLAtomic]] = None
        self.goal_predicate = GOAL_PREDICATE
        self.check_predicate = CHECK_PREDICATE
        self.simplify_disj_goal = simplify_disj_goal

    @property
    def result(self) -> Tuple[Domain, Problem]:
        """Get the result."""
        if self._result_domain is None or self._result_problem is None:
            raise ValueError("compilation not executed yet")
        return self._result_domain, self._result_problem

    @property
    def yesterday_mapping(self) -> str:
        """Get the mapping of the yesterday atoms."""
        if self._yesterday_mapping is None:
            raise ValueError("compilation not executed yet")
        return self._yesterday_mapping

    def compile(self):
        """Compute the new domain and the new problem."""
        if self._executed:
            return

        self.cm = CompilationManager(self.formula)
        self._quoted_map = self.cm.quoted_map
        self._yesterday_mapping = self.cm.get_yesterday_mapping()
        self._translation_dictionary = self.cm.quoted_map.copy()
        self._translation_dictionary.update(self.cm.val_map)
        self._translator = Pylogics2PddlTranslator(
            cast(Dict[YesterdayAtom, PLTLAtomic], self._translation_dictionary),
            self.from_atoms_to_fluent,
        )

        self._compile_domain()
        self._compile_problem()

        self._executed = True
        return

    # TODO: fix signature, different from parent class  # pylint: disable=fixme
    def _compile_domain(
        self
    ):  # pylint: disable=arguments-differ
        """Compute the new domain."""

        _, quoted_atoms, new_effs, new_goal = self.cm.get_problem_extension()
        quoted_atoms.append(TRUE_ATOM)

        quoted_updates = [self.effect_conversion(eff, positive=True) for eff in new_effs] + \
            [self.effect_conversion(eff, positive=False) for eff in new_effs]
        
        new_predicates = [
            *self.domain.predicates,
            *list(map(self.pylogics2pddl, quoted_atoms)),
            self.goal_predicate,
        ]

        new_goal = self.pylogics2pddl(new_goal)

        if self.evaluate_pnf:
            domain_actions = _update_domain_actions_with_check(
                self, quoted_updates, new_predicates
            )
            new_goal = And(new_goal, self.check_predicate)
            new_predicates.append(self.check_predicate)
        else:
            domain_actions = _update_domain_actions(
                self, self.domain.actions, quoted_updates
            )

        achieve_goal_action = _get_achieve_goal_action(self.goal_predicate, new_goal)
        if self.simplify_disj_goal:
            achieve_goal_actions = delete_disjunction_in_goal(
                self.goal_predicate,
                achieve_goal_action,
            )
            domain_actions = domain_actions.union(achieve_goal_actions)
        else:
            domain_actions.add(achieve_goal_action)

        self._result_domain = Domain(
            name=self.domain.name,
            requirements=[
                *self.domain.requirements,
                Requirements.CONDITIONAL_EFFECTS,
                Requirements.NEG_PRECONDITION,
            ],
            types=self.domain.types,
            constants=self.domain.constants,
            predicates=new_predicates,
            derived_predicates=[*self.domain.derived_predicates],
            actions=domain_actions,
        )

    def _compile_problem(self):
        """Compute the new problem."""
        new_init = set(self.problem.init) | {TRUE_PREDICATE}
        if self.evaluate_pnf:
            new_init = new_init | {self.check_predicate}

        self._result_problem = Problem(
            name=self.problem.name,
            domain=self._result_domain,
            domain_name=self.domain.name,
            requirements=self.problem.requirements,
            objects=[*self.problem.objects],
            init=new_init,
            goal=And(self.goal_predicate),
        )


def _extend_action_model(action: Action, additional_precondition: Formula, additional_effects: List) -> Action:
    new_precondition = And(action.precondition, additional_precondition)
    new_effects = AndEffect(action.effect, *additional_effects)
    return _new_action(action.name, action.parameters, new_precondition, new_effects)


def _new_action(name: str, parameters: List, preconditions: Formula, effects: AndEffect) -> Action:
    return Action(name=name, parameters=[*parameters], precondition=preconditions, effect=effects)


def _update_domain_actions_with_check(
    compiler: ADLCompiler, new_effects: Set[When], new_predicates: list
) -> Set[Action]:
    """
    Update domain action using the "check" optimization.

    This optmization works as follows.

        Consider the formula O(a). The standard compilation would yield a compiled action of the form

        (:action ACTION
            Pre: ...
            Eff: ...
                a or "YO(a)" -> "YO(a)"
                not (a or "YO(a)") -> not "YO(a)"
                ...

        The optmized compilation introduces a set of "pnf_i" variables to encapsulate the complex formulas
        deriving from the pnf of a PPLTL formula. Hence, the optimized encoding of the action above becomes:

        (:action ACTION
            Pre: ...
                not evaluate-pnf
            Eff: ...
                1. pnf_0 -> "YO(a)", not pnf_0 -> not "YO(a)"
                2. not pnf_0
                3. evaluate-pnf
                ...

        Effects 1. capture the update the the quoted variable
        Effect 2. deletes all the pnf variables (in this example just pnf_0). This is necessary as each pnf must be
        re-evaluated after the occurence of any action
        Effect 3. forces the planner to execute a special action that evaluates all pnfs. The new precondition
        guarantees that the pnfs get updated after every action.

        The special action that computes the pnf is defined as follows:

        (:action evaluate-pnf-action
            Pre: evaluate-pnf
            Eff:
                a or "YO(a)" -> pnf_0
                not evaluate-pnf

        Notice that "evaluate-pnf" is true in the initial state. Hence, due to the structure of the actions,
        Every trace induced by the domain has the following pattern:

        evaluate-pnf-action, domain-action, evaluate-pnf-action, domain-action, ..., domain-action, achieve-goal

    :param compiler: the ADL compiler
    :param new_effects: the new set of effects
    :param new_predicates: the new set predicates
    :return: the set of actions
    """
    positive_effects = [eff for eff in new_effects if not isinstance(eff.effect, Not)]

    qouted_update_effects = []
    pnf_evaluation_effects = []
    pnf_delete_effects = []

    for eff in positive_effects:
        yesterday_effect = eff.effect
        check_(isinstance(yesterday_effect, Predicate))
        pnf_predicate = Predicate(yesterday_effect.name.replace(QUOTED_ATOM, PNF), *[])
        pnf_evaluation_effects.append(When(eff.condition, pnf_predicate))
        pnf_delete_effects.append(Not(pnf_predicate))
        qouted_update_effects += [When(pnf_predicate, yesterday_effect), When(Not(pnf_predicate), Not(yesterday_effect))]
        new_predicates.append(pnf_predicate)

    goal_fluent = compiler.goal_predicate
    new_actions = set()

    additional_precondition = And(Not(goal_fluent), Not(compiler.check_predicate))
    additional_effects = pnf_delete_effects + qouted_update_effects + [compiler.check_predicate]

    for action in compiler.domain.actions:
        new_actions.add(_extend_action_model(action, additional_precondition, additional_effects))
            
    new_actions.add(
        _new_action(name=EVALUATE_PNF_ACTION, 
                    parameters=[], 
                    preconditions=And(Not(goal_fluent), compiler.check_predicate), 
                    effects=AndEffect(*pnf_evaluation_effects, Not(compiler.check_predicate)))
    )

    return new_actions


def _update_domain_actions(
    compiler: ADLCompiler,
    actions: AbstractSet[Action],
    new_conditional_effects: List[When],
) -> Set[Action]:
    """Update domain actions."""
    new_actions = set()
    for action in actions:
        if isinstance(action.effect, AndEffect):
            eff_list = list(action.effect.operands) + new_conditional_effects
            new_effect = AndEffect(*eff_list)
        else:
            new_effect = AndEffect(action.effect, *new_conditional_effects)
        new_actions.add(
            Action(
                name=action.name,
                parameters=[*action.parameters],
                precondition=And(action.precondition, Not(compiler.goal_predicate)),
                effect=new_effect,
            )
        )
    return new_actions


def delete_disjunction_in_goal(
    goal_predicate: Predicate, achieve_goal_action: Action
) -> List[Action]:
    """
    Delete disjunction in goal.

    :param goal_predicate: the goal predicate
    :param achieve_goal_action: the achieve goal action
    :return: the set of actions
    """
    pre = achieve_goal_action.precondition
    nnf_pre = nnf(pre)
    dnf_pre = dnf(nnf_pre)
    new_achieve_goal_actions = []
    i = 0
    for conj in dnf_pre.operands:
        new_achieve_goal_action = _get_achieve_goal_action(
            goal_predicate, conj, name=ACHIEVE_GOAL_ACTION + f"_{i}"
        )
        new_achieve_goal_actions.append(new_achieve_goal_action)
        i += 1

    return new_achieve_goal_actions


def _get_achieve_goal_action(
    goal_predicate: Predicate, precond: PddlFormula, name=ACHIEVE_GOAL_ACTION
) -> Action:
    """Get achieve goal action."""
    return Action(
        name=name,
        parameters=[],
        precondition=precond,
        effect=AndEffect(goal_predicate),
    )
