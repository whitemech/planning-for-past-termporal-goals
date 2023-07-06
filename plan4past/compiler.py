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
from typing import AbstractSet, Dict, Optional, Set, Tuple

from pddl.core import Action, Domain, Problem, Requirements
from pddl.logic import Constant
from pddl.logic.base import And, Not
from pddl.logic.effects import AndEffect, When
from pddl.logic.predicates import DerivedPredicate, Predicate
from pylogics.syntax.base import Formula, Logic
from pylogics.syntax.pltl import Atomic as PLTLAtomic
from pylogics.utils.to_string import to_string

from plan4past.helpers.utils import (
    add_val_prefix,
    check_,
    default_mapping,
    remove_before_prefix,
    replace_symbols,
)
from plan4past.utils.atoms_visitor import find_atoms
from plan4past.utils.derived_visitor import derived_predicates
from plan4past.utils.predicates_visitor import predicates
from plan4past.utils.rewrite_formula_visitor import rewrite
from plan4past.utils.val_predicates_visitor import val_predicates


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
    ):
        """
        Check that the mapping is valid wrt the problem instance.

        In particular:
        - check that all the formula atoms are covered (TODO)
        - check that all the atoms are legal wrt the formula
        - check that the fluents are legal wrt the domain

        :param _domain:
        :param _formula:
        :param from_atoms_to_fluent:
        :return:
        """
        for _atom, fluent in from_atoms_to_fluent.items():
            check_(all(isinstance(t, Constant) for t in fluent.terms))

    @property
    def result(self) -> Tuple[Domain, Problem]:
        """Get the result."""
        if self._result_domain and self._result_problem is None:
            raise ValueError("compilation not executed yet")
        return self._result_domain, self._result_problem

    def compile(self):
        """Compute the new domain and the new problem."""
        if not self._executed:
            self._compile_domain()
            self._compile_problem()
            self._executed = True

    def _compile_domain(self):
        """Compute the new domain."""
        new_predicates = predicates(self.formula).union(val_predicates(self.formula))
        new_derived_predicates = derived_predicates(
            self.formula, self.from_atoms_to_fluent
        )
        new_whens = _compute_whens(self.formula)
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

    def _compile_problem(self):
        """Compute the new problem."""
        new_init = (
            {*self.problem.init, Predicate("true")}
            if PLTLAtomic("true") in find_atoms(self.formula)
            else set(self.problem.init)
        )

        self._result_problem = Problem(
            name=self.problem.name,
            domain_name=self.domain.name,
            requirements=self.problem.requirements,
            objects=[*self.problem.objects],
            init=new_init,
            goal=And(
                Predicate(add_val_prefix(replace_symbols(to_string(self.formula))))
            ),
        )


def _compute_whens(formula: Formula) -> Set[When]:
    """Compute conditional effects for formula progression."""
    return {
        When(Predicate(add_val_prefix(remove_before_prefix(p.name))), p)
        for p in predicates(formula)
    }.union(
        When(Not(Predicate(add_val_prefix(remove_before_prefix(p.name)))), Not(p))
        for p in predicates(formula)
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
