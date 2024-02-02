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

"""This module contains tests for the plan4past.helpers.formula_helper module."""
from pylogics.syntax.base import *
from pylogics.syntax.pltl import *
from plan4past.helpers.formula_helper import *
import pytest

a = Atomic("a")
b = Atomic("b")


test_formulas_val_set = [
    (a, {ValAtom_(a)}),
    (And(a, b), {ValAtom_(a), ValAtom_(b), ValAtom_(And(a, b))}),
    (Or(a, b), {ValAtom_(a), ValAtom_(b), ValAtom_(Or(a, b))}),
    (Not(And(a, b)), {ValAtom_(a), ValAtom_(b), ValAtom_(And(a, b)), ValAtom_(Not(And(a, b)))}),
    (Since(a, b), {ValAtom_(a), ValAtom_(b), ValAtom_(Since(a, b))}),
    (Since(a, Once(b)), {ValAtom_(a), ValAtom_(b), ValAtom_(Once(b)), ValAtom_(Since(a, Once(b)))}),
]

@pytest.mark.parametrize("input_formula, expected", test_formulas_val_set)
def test_val_set(input_formula, expected):
    assert set(val_set(input_formula)) == expected


def test_equality_val_before_atoms():
    ValAtom_(a) != Yatom_(a)
    ValAtom_(Since(a, Once(b))) != Yatom_(Since(a, Once(b)))


test_formulas_quoted_set = [
    (a, set()),
    (And(a, b), set()),
    (Or(a, b), set()),
    (Not(And(a, b)), set()),
    (Since(a, b), {Yatom_(Since(a, b))}),
    (Since(a, Once(b)), {Yatom_(Once(b)), Yatom_(Since(a, Once(b)))}),
    (Since(a, Before(Once(b))), {Yatom_(Once(b)), Yatom_(Since(a, Before(Once(b))))}),
    (And(Once(b), Since(a, Before(Once(b)))), {Yatom_(Once(b)), Yatom_(Since(a, Before(Once(b))))})
]

@pytest.mark.parametrize("input_formula, expected", test_formulas_quoted_set)
def test_val_set(input_formula, expected):
    assert quoted_set(input_formula) == expected

if __name__ == "__main__":
    pytest.main()