(define (problem triangle-tire-14)(:domain triangle-tire)(:objects l1x1 l1x2 l1x3 l1x4 l1x5 l1x6 l1x7 l1x8 l1x9 l1x10 l1x11 l1x12 l1x13 l1x14 l1x15 l1x16 l1x17 l1x18 l1x19 l1x20 l1x21 l1x22 l1x23 l1x24 l1x25 l1x26 l1x27 l1x28 l1x29 l2x1 l2x2 l2x3 l2x4 l2x5 l2x6 l2x7 l2x8 l2x9 l2x10 l2x11 l2x12 l2x13 l2x14 l2x15 l2x16 l2x17 l2x18 l2x19 l2x20 l2x21 l2x22 l2x23 l2x24 l2x25 l2x26 l2x27 l2x28 l2x29 l3x1 l3x2 l3x3 l3x4 l3x5 l3x6 l3x7 l3x8 l3x9 l3x10 l3x11 l3x12 l3x13 l3x14 l3x15 l3x16 l3x17 l3x18 l3x19 l3x20 l3x21 l3x22 l3x23 l3x24 l3x25 l3x26 l3x27 l3x28 l3x29 l4x1 l4x2 l4x3 l4x4 l4x5 l4x6 l4x7 l4x8 l4x9 l4x10 l4x11 l4x12 l4x13 l4x14 l4x15 l4x16 l4x17 l4x18 l4x19 l4x20 l4x21 l4x22 l4x23 l4x24 l4x25 l4x26 l4x27 l4x28 l4x29 l5x1 l5x2 l5x3 l5x4 l5x5 l5x6 l5x7 l5x8 l5x9 l5x10 l5x11 l5x12 l5x13 l5x14 l5x15 l5x16 l5x17 l5x18 l5x19 l5x20 l5x21 l5x22 l5x23 l5x24 l5x25 l5x26 l5x27 l5x28 l5x29 l6x1 l6x2 l6x3 l6x4 l6x5 l6x6 l6x7 l6x8 l6x9 l6x10 l6x11 l6x12 l6x13 l6x14 l6x15 l6x16 l6x17 l6x18 l6x19 l6x20 l6x21 l6x22 l6x23 l6x24 l6x25 l6x26 l6x27 l6x28 l6x29 l7x1 l7x2 l7x3 l7x4 l7x5 l7x6 l7x7 l7x8 l7x9 l7x10 l7x11 l7x12 l7x13 l7x14 l7x15 l7x16 l7x17 l7x18 l7x19 l7x20 l7x21 l7x22 l7x23 l7x24 l7x25 l7x26 l7x27 l7x28 l7x29 l8x1 l8x2 l8x3 l8x4 l8x5 l8x6 l8x7 l8x8 l8x9 l8x10 l8x11 l8x12 l8x13 l8x14 l8x15 l8x16 l8x17 l8x18 l8x19 l8x20 l8x21 l8x22 l8x23 l8x24 l8x25 l8x26 l8x27 l8x28 l8x29 l9x1 l9x2 l9x3 l9x4 l9x5 l9x6 l9x7 l9x8 l9x9 l9x10 l9x11 l9x12 l9x13 l9x14 l9x15 l9x16 l9x17 l9x18 l9x19 l9x20 l9x21 l9x22 l9x23 l9x24 l9x25 l9x26 l9x27 l9x28 l9x29 l10x1 l10x2 l10x3 l10x4 l10x5 l10x6 l10x7 l10x8 l10x9 l10x10 l10x11 l10x12 l10x13 l10x14 l10x15 l10x16 l10x17 l10x18 l10x19 l10x20 l10x21 l10x22 l10x23 l10x24 l10x25 l10x26 l10x27 l10x28 l10x29 l11x1 l11x2 l11x3 l11x4 l11x5 l11x6 l11x7 l11x8 l11x9 l11x10 l11x11 l11x12 l11x13 l11x14 l11x15 l11x16 l11x17 l11x18 l11x19 l11x20 l11x21 l11x22 l11x23 l11x24 l11x25 l11x26 l11x27 l11x28 l11x29 l12x1 l12x2 l12x3 l12x4 l12x5 l12x6 l12x7 l12x8 l12x9 l12x10 l12x11 l12x12 l12x13 l12x14 l12x15 l12x16 l12x17 l12x18 l12x19 l12x20 l12x21 l12x22 l12x23 l12x24 l12x25 l12x26 l12x27 l12x28 l12x29 l13x1 l13x2 l13x3 l13x4 l13x5 l13x6 l13x7 l13x8 l13x9 l13x10 l13x11 l13x12 l13x13 l13x14 l13x15 l13x16 l13x17 l13x18 l13x19 l13x20 l13x21 l13x22 l13x23 l13x24 l13x25 l13x26 l13x27 l13x28 l13x29 l14x1 l14x2 l14x3 l14x4 l14x5 l14x6 l14x7 l14x8 l14x9 l14x10 l14x11 l14x12 l14x13 l14x14 l14x15 l14x16 l14x17 l14x18 l14x19 l14x20 l14x21 l14x22 l14x23 l14x24 l14x25 l14x26 l14x27 l14x28 l14x29 l15x1 l15x2 l15x3 l15x4 l15x5 l15x6 l15x7 l15x8 l15x9 l15x10 l15x11 l15x12 l15x13 l15x14 l15x15 l15x16 l15x17 l15x18 l15x19 l15x20 l15x21 l15x22 l15x23 l15x24 l15x25 l15x26 l15x27 l15x28 l15x29 l16x1 l16x2 l16x3 l16x4 l16x5 l16x6 l16x7 l16x8 l16x9 l16x10 l16x11 l16x12 l16x13 l16x14 l16x15 l16x16 l16x17 l16x18 l16x19 l16x20 l16x21 l16x22 l16x23 l16x24 l16x25 l16x26 l16x27 l16x28 l16x29 l17x1 l17x2 l17x3 l17x4 l17x5 l17x6 l17x7 l17x8 l17x9 l17x10 l17x11 l17x12 l17x13 l17x14 l17x15 l17x16 l17x17 l17x18 l17x19 l17x20 l17x21 l17x22 l17x23 l17x24 l17x25 l17x26 l17x27 l17x28 l17x29 l18x1 l18x2 l18x3 l18x4 l18x5 l18x6 l18x7 l18x8 l18x9 l18x10 l18x11 l18x12 l18x13 l18x14 l18x15 l18x16 l18x17 l18x18 l18x19 l18x20 l18x21 l18x22 l18x23 l18x24 l18x25 l18x26 l18x27 l18x28 l18x29 l19x1 l19x2 l19x3 l19x4 l19x5 l19x6 l19x7 l19x8 l19x9 l19x10 l19x11 l19x12 l19x13 l19x14 l19x15 l19x16 l19x17 l19x18 l19x19 l19x20 l19x21 l19x22 l19x23 l19x24 l19x25 l19x26 l19x27 l19x28 l19x29 l20x1 l20x2 l20x3 l20x4 l20x5 l20x6 l20x7 l20x8 l20x9 l20x10 l20x11 l20x12 l20x13 l20x14 l20x15 l20x16 l20x17 l20x18 l20x19 l20x20 l20x21 l20x22 l20x23 l20x24 l20x25 l20x26 l20x27 l20x28 l20x29 l21x1 l21x2 l21x3 l21x4 l21x5 l21x6 l21x7 l21x8 l21x9 l21x10 l21x11 l21x12 l21x13 l21x14 l21x15 l21x16 l21x17 l21x18 l21x19 l21x20 l21x21 l21x22 l21x23 l21x24 l21x25 l21x26 l21x27 l21x28 l21x29 l22x1 l22x2 l22x3 l22x4 l22x5 l22x6 l22x7 l22x8 l22x9 l22x10 l22x11 l22x12 l22x13 l22x14 l22x15 l22x16 l22x17 l22x18 l22x19 l22x20 l22x21 l22x22 l22x23 l22x24 l22x25 l22x26 l22x27 l22x28 l22x29 l23x1 l23x2 l23x3 l23x4 l23x5 l23x6 l23x7 l23x8 l23x9 l23x10 l23x11 l23x12 l23x13 l23x14 l23x15 l23x16 l23x17 l23x18 l23x19 l23x20 l23x21 l23x22 l23x23 l23x24 l23x25 l23x26 l23x27 l23x28 l23x29 l24x1 l24x2 l24x3 l24x4 l24x5 l24x6 l24x7 l24x8 l24x9 l24x10 l24x11 l24x12 l24x13 l24x14 l24x15 l24x16 l24x17 l24x18 l24x19 l24x20 l24x21 l24x22 l24x23 l24x24 l24x25 l24x26 l24x27 l24x28 l24x29 l25x1 l25x2 l25x3 l25x4 l25x5 l25x6 l25x7 l25x8 l25x9 l25x10 l25x11 l25x12 l25x13 l25x14 l25x15 l25x16 l25x17 l25x18 l25x19 l25x20 l25x21 l25x22 l25x23 l25x24 l25x25 l25x26 l25x27 l25x28 l25x29 l26x1 l26x2 l26x3 l26x4 l26x5 l26x6 l26x7 l26x8 l26x9 l26x10 l26x11 l26x12 l26x13 l26x14 l26x15 l26x16 l26x17 l26x18 l26x19 l26x20 l26x21 l26x22 l26x23 l26x24 l26x25 l26x26 l26x27 l26x28 l26x29 l27x1 l27x2 l27x3 l27x4 l27x5 l27x6 l27x7 l27x8 l27x9 l27x10 l27x11 l27x12 l27x13 l27x14 l27x15 l27x16 l27x17 l27x18 l27x19 l27x20 l27x21 l27x22 l27x23 l27x24 l27x25 l27x26 l27x27 l27x28 l27x29 l28x1 l28x2 l28x3 l28x4 l28x5 l28x6 l28x7 l28x8 l28x9 l28x10 l28x11 l28x12 l28x13 l28x14 l28x15 l28x16 l28x17 l28x18 l28x19 l28x20 l28x21 l28x22 l28x23 l28x24 l28x25 l28x26 l28x27 l28x28 l28x29 l29x1 l29x2 l29x3 l29x4 l29x5 l29x6 l29x7 l29x8 l29x9 l29x10 l29x11 l29x12 l29x13 l29x14 l29x15 l29x16 l29x17 l29x18 l29x19 l29x20 l29x21 l29x22 l29x23 l29x24 l29x25 l29x26 l29x27 l29x28 l29x29 - location)(:init (vehicleat l1x1)(road l1x1 l1x2)(road l1x2 l1x3)(road l1x3 l1x4)(road l1x4 l1x5)(road l1x5 l1x6)(road l1x6 l1x7)(road l1x7 l1x8)(road l1x8 l1x9)(road l1x9 l1x10)(road l1x10 l1x11)(road l1x11 l1x12)(road l1x12 l1x13)(road l1x13 l1x14)(road l1x14 l1x15)(road l1x15 l1x16)(road l1x16 l1x17)(road l1x17 l1x18)(road l1x18 l1x19)(road l1x19 l1x20)(road l1x20 l1x21)(road l1x21 l1x22)(road l1x22 l1x23)(road l1x23 l1x24)(road l1x24 l1x25)(road l1x25 l1x26)(road l1x26 l1x27)(road l1x27 l1x28)(road l1x28 l1x29)(road l1x1 l2x1)(road l1x2 l2x2)(road l1x3 l2x3)(road l1x4 l2x4)(road l1x5 l2x5)(road l1x6 l2x6)(road l1x7 l2x7)(road l1x8 l2x8)(road l1x9 l2x9)(road l1x10 l2x10)(road l1x11 l2x11)(road l1x12 l2x12)(road l1x13 l2x13)(road l1x14 l2x14)(road l1x15 l2x15)(road l1x16 l2x16)(road l1x17 l2x17)(road l1x18 l2x18)(road l1x19 l2x19)(road l1x20 l2x20)(road l1x21 l2x21)(road l1x22 l2x22)(road l1x23 l2x23)(road l1x24 l2x24)(road l1x25 l2x25)(road l1x26 l2x26)(road l1x27 l2x27)(road l1x28 l2x28)(road l2x1 l1x2)(road l2x2 l1x3)(road l2x3 l1x4)(road l2x4 l1x5)(road l2x5 l1x6)(road l2x6 l1x7)(road l2x7 l1x8)(road l2x8 l1x9)(road l2x9 l1x10)(road l2x10 l1x11)(road l2x11 l1x12)(road l2x12 l1x13)(road l2x13 l1x14)(road l2x14 l1x15)(road l2x15 l1x16)(road l2x16 l1x17)(road l2x17 l1x18)(road l2x18 l1x19)(road l2x19 l1x20)(road l2x20 l1x21)(road l2x21 l1x22)(road l2x22 l1x23)(road l2x23 l1x24)(road l2x24 l1x25)(road l2x25 l1x26)(road l2x26 l1x27)(road l2x27 l1x28)(road l2x28 l1x29)(sparein l2x1)(sparein l2x2)(sparein l2x3)(sparein l2x4)(sparein l2x5)(sparein l2x6)(sparein l2x7)(sparein l2x8)(sparein l2x9)(sparein l2x10)(sparein l2x11)(sparein l2x12)(sparein l2x13)(sparein l2x14)(sparein l2x15)(sparein l2x16)(sparein l2x17)(sparein l2x18)(sparein l2x19)(sparein l2x20)(sparein l2x21)(sparein l2x22)(sparein l2x23)(sparein l2x24)(sparein l2x25)(sparein l2x26)(sparein l2x27)(sparein l2x28)(road l3x1 l3x2)(road l3x2 l3x3)(road l3x3 l3x4)(road l3x4 l3x5)(road l3x5 l3x6)(road l3x6 l3x7)(road l3x7 l3x8)(road l3x8 l3x9)(road l3x9 l3x10)(road l3x10 l3x11)(road l3x11 l3x12)(road l3x12 l3x13)(road l3x13 l3x14)(road l3x14 l3x15)(road l3x15 l3x16)(road l3x16 l3x17)(road l3x17 l3x18)(road l3x18 l3x19)(road l3x19 l3x20)(road l3x20 l3x21)(road l3x21 l3x22)(road l3x22 l3x23)(road l3x23 l3x24)(road l3x24 l3x25)(road l3x25 l3x26)(road l3x26 l3x27)(road l2x1 l3x1)(road l2x3 l3x3)(road l2x5 l3x5)(road l2x7 l3x7)(road l2x9 l3x9)(road l2x11 l3x11)(road l2x13 l3x13)(road l2x15 l3x15)(road l2x17 l3x17)(road l2x19 l3x19)(road l2x21 l3x21)(road l2x23 l3x23)(road l2x25 l3x25)(road l2x27 l3x27)(road l3x1 l2x2)(road l3x3 l2x4)(road l3x5 l2x6)(road l3x7 l2x8)(road l3x9 l2x10)(road l3x11 l2x12)(road l3x13 l2x14)(road l3x15 l2x16)(road l3x17 l2x18)(road l3x19 l2x20)(road l3x21 l2x22)(road l3x23 l2x24)(road l3x25 l2x26)(road l3x27 l2x28)(sparein l3x1)(sparein l3x27)(road l3x1 l4x1)(road l3x2 l4x2)(road l3x3 l4x3)(road l3x4 l4x4)(road l3x5 l4x5)(road l3x6 l4x6)(road l3x7 l4x7)(road l3x8 l4x8)(road l3x9 l4x9)(road l3x10 l4x10)(road l3x11 l4x11)(road l3x12 l4x12)(road l3x13 l4x13)(road l3x14 l4x14)(road l3x15 l4x15)(road l3x16 l4x16)(road l3x17 l4x17)(road l3x18 l4x18)(road l3x19 l4x19)(road l3x20 l4x20)(road l3x21 l4x21)(road l3x22 l4x22)(road l3x23 l4x23)(road l3x24 l4x24)(road l3x25 l4x25)(road l3x26 l4x26)(road l4x1 l3x2)(road l4x2 l3x3)(road l4x3 l3x4)(road l4x4 l3x5)(road l4x5 l3x6)(road l4x6 l3x7)(road l4x7 l3x8)(road l4x8 l3x9)(road l4x9 l3x10)(road l4x10 l3x11)(road l4x11 l3x12)(road l4x12 l3x13)(road l4x13 l3x14)(road l4x14 l3x15)(road l4x15 l3x16)(road l4x16 l3x17)(road l4x17 l3x18)(road l4x18 l3x19)(road l4x19 l3x20)(road l4x20 l3x21)(road l4x21 l3x22)(road l4x22 l3x23)(road l4x23 l3x24)(road l4x24 l3x25)(road l4x25 l3x26)(road l4x26 l3x27)(sparein l4x1)(sparein l4x2)(sparein l4x3)(sparein l4x4)(sparein l4x5)(sparein l4x6)(sparein l4x7)(sparein l4x8)(sparein l4x9)(sparein l4x10)(sparein l4x11)(sparein l4x12)(sparein l4x13)(sparein l4x14)(sparein l4x15)(sparein l4x16)(sparein l4x17)(sparein l4x18)(sparein l4x19)(sparein l4x20)(sparein l4x21)(sparein l4x22)(sparein l4x23)(sparein l4x24)(sparein l4x25)(sparein l4x26)(road l5x1 l5x2)(road l5x2 l5x3)(road l5x3 l5x4)(road l5x4 l5x5)(road l5x5 l5x6)(road l5x6 l5x7)(road l5x7 l5x8)(road l5x8 l5x9)(road l5x9 l5x10)(road l5x10 l5x11)(road l5x11 l5x12)(road l5x12 l5x13)(road l5x13 l5x14)(road l5x14 l5x15)(road l5x15 l5x16)(road l5x16 l5x17)(road l5x17 l5x18)(road l5x18 l5x19)(road l5x19 l5x20)(road l5x20 l5x21)(road l5x21 l5x22)(road l5x22 l5x23)(road l5x23 l5x24)(road l5x24 l5x25)(road l4x1 l5x1)(road l4x3 l5x3)(road l4x5 l5x5)(road l4x7 l5x7)(road l4x9 l5x9)(road l4x11 l5x11)(road l4x13 l5x13)(road l4x15 l5x15)(road l4x17 l5x17)(road l4x19 l5x19)(road l4x21 l5x21)(road l4x23 l5x23)(road l4x25 l5x25)(road l5x1 l4x2)(road l5x3 l4x4)(road l5x5 l4x6)(road l5x7 l4x8)(road l5x9 l4x10)(road l5x11 l4x12)(road l5x13 l4x14)(road l5x15 l4x16)(road l5x17 l4x18)(road l5x19 l4x20)(road l5x21 l4x22)(road l5x23 l4x24)(road l5x25 l4x26)(sparein l5x1)(sparein l5x25)(road l5x1 l6x1)(road l5x2 l6x2)(road l5x3 l6x3)(road l5x4 l6x4)(road l5x5 l6x5)(road l5x6 l6x6)(road l5x7 l6x7)(road l5x8 l6x8)(road l5x9 l6x9)(road l5x10 l6x10)(road l5x11 l6x11)(road l5x12 l6x12)(road l5x13 l6x13)(road l5x14 l6x14)(road l5x15 l6x15)(road l5x16 l6x16)(road l5x17 l6x17)(road l5x18 l6x18)(road l5x19 l6x19)(road l5x20 l6x20)(road l5x21 l6x21)(road l5x22 l6x22)(road l5x23 l6x23)(road l5x24 l6x24)(road l6x1 l5x2)(road l6x2 l5x3)(road l6x3 l5x4)(road l6x4 l5x5)(road l6x5 l5x6)(road l6x6 l5x7)(road l6x7 l5x8)(road l6x8 l5x9)(road l6x9 l5x10)(road l6x10 l5x11)(road l6x11 l5x12)(road l6x12 l5x13)(road l6x13 l5x14)(road l6x14 l5x15)(road l6x15 l5x16)(road l6x16 l5x17)(road l6x17 l5x18)(road l6x18 l5x19)(road l6x19 l5x20)(road l6x20 l5x21)(road l6x21 l5x22)(road l6x22 l5x23)(road l6x23 l5x24)(road l6x24 l5x25)(sparein l6x1)(sparein l6x2)(sparein l6x3)(sparein l6x4)(sparein l6x5)(sparein l6x6)(sparein l6x7)(sparein l6x8)(sparein l6x9)(sparein l6x10)(sparein l6x11)(sparein l6x12)(sparein l6x13)(sparein l6x14)(sparein l6x15)(sparein l6x16)(sparein l6x17)(sparein l6x18)(sparein l6x19)(sparein l6x20)(sparein l6x21)(sparein l6x22)(sparein l6x23)(sparein l6x24)(road l7x1 l7x2)(road l7x2 l7x3)(road l7x3 l7x4)(road l7x4 l7x5)(road l7x5 l7x6)(road l7x6 l7x7)(road l7x7 l7x8)(road l7x8 l7x9)(road l7x9 l7x10)(road l7x10 l7x11)(road l7x11 l7x12)(road l7x12 l7x13)(road l7x13 l7x14)(road l7x14 l7x15)(road l7x15 l7x16)(road l7x16 l7x17)(road l7x17 l7x18)(road l7x18 l7x19)(road l7x19 l7x20)(road l7x20 l7x21)(road l7x21 l7x22)(road l7x22 l7x23)(road l6x1 l7x1)(road l6x3 l7x3)(road l6x5 l7x5)(road l6x7 l7x7)(road l6x9 l7x9)(road l6x11 l7x11)(road l6x13 l7x13)(road l6x15 l7x15)(road l6x17 l7x17)(road l6x19 l7x19)(road l6x21 l7x21)(road l6x23 l7x23)(road l7x1 l6x2)(road l7x3 l6x4)(road l7x5 l6x6)(road l7x7 l6x8)(road l7x9 l6x10)(road l7x11 l6x12)(road l7x13 l6x14)(road l7x15 l6x16)(road l7x17 l6x18)(road l7x19 l6x20)(road l7x21 l6x22)(road l7x23 l6x24)(sparein l7x1)(sparein l7x23)(road l7x1 l8x1)(road l7x2 l8x2)(road l7x3 l8x3)(road l7x4 l8x4)(road l7x5 l8x5)(road l7x6 l8x6)(road l7x7 l8x7)(road l7x8 l8x8)(road l7x9 l8x9)(road l7x10 l8x10)(road l7x11 l8x11)(road l7x12 l8x12)(road l7x13 l8x13)(road l7x14 l8x14)(road l7x15 l8x15)(road l7x16 l8x16)(road l7x17 l8x17)(road l7x18 l8x18)(road l7x19 l8x19)(road l7x20 l8x20)(road l7x21 l8x21)(road l7x22 l8x22)(road l8x1 l7x2)(road l8x2 l7x3)(road l8x3 l7x4)(road l8x4 l7x5)(road l8x5 l7x6)(road l8x6 l7x7)(road l8x7 l7x8)(road l8x8 l7x9)(road l8x9 l7x10)(road l8x10 l7x11)(road l8x11 l7x12)(road l8x12 l7x13)(road l8x13 l7x14)(road l8x14 l7x15)(road l8x15 l7x16)(road l8x16 l7x17)(road l8x17 l7x18)(road l8x18 l7x19)(road l8x19 l7x20)(road l8x20 l7x21)(road l8x21 l7x22)(road l8x22 l7x23)(sparein l8x1)(sparein l8x2)(sparein l8x3)(sparein l8x4)(sparein l8x5)(sparein l8x6)(sparein l8x7)(sparein l8x8)(sparein l8x9)(sparein l8x10)(sparein l8x11)(sparein l8x12)(sparein l8x13)(sparein l8x14)(sparein l8x15)(sparein l8x16)(sparein l8x17)(sparein l8x18)(sparein l8x19)(sparein l8x20)(sparein l8x21)(sparein l8x22)(road l9x1 l9x2)(road l9x2 l9x3)(road l9x3 l9x4)(road l9x4 l9x5)(road l9x5 l9x6)(road l9x6 l9x7)(road l9x7 l9x8)(road l9x8 l9x9)(road l9x9 l9x10)(road l9x10 l9x11)(road l9x11 l9x12)(road l9x12 l9x13)(road l9x13 l9x14)(road l9x14 l9x15)(road l9x15 l9x16)(road l9x16 l9x17)(road l9x17 l9x18)(road l9x18 l9x19)(road l9x19 l9x20)(road l9x20 l9x21)(road l8x1 l9x1)(road l8x3 l9x3)(road l8x5 l9x5)(road l8x7 l9x7)(road l8x9 l9x9)(road l8x11 l9x11)(road l8x13 l9x13)(road l8x15 l9x15)(road l8x17 l9x17)(road l8x19 l9x19)(road l8x21 l9x21)(road l9x1 l8x2)(road l9x3 l8x4)(road l9x5 l8x6)(road l9x7 l8x8)(road l9x9 l8x10)(road l9x11 l8x12)(road l9x13 l8x14)(road l9x15 l8x16)(road l9x17 l8x18)(road l9x19 l8x20)(road l9x21 l8x22)(sparein l9x1)(sparein l9x21)(road l9x1 l10x1)(road l9x2 l10x2)(road l9x3 l10x3)(road l9x4 l10x4)(road l9x5 l10x5)(road l9x6 l10x6)(road l9x7 l10x7)(road l9x8 l10x8)(road l9x9 l10x9)(road l9x10 l10x10)(road l9x11 l10x11)(road l9x12 l10x12)(road l9x13 l10x13)(road l9x14 l10x14)(road l9x15 l10x15)(road l9x16 l10x16)(road l9x17 l10x17)(road l9x18 l10x18)(road l9x19 l10x19)(road l9x20 l10x20)(road l10x1 l9x2)(road l10x2 l9x3)(road l10x3 l9x4)(road l10x4 l9x5)(road l10x5 l9x6)(road l10x6 l9x7)(road l10x7 l9x8)(road l10x8 l9x9)(road l10x9 l9x10)(road l10x10 l9x11)(road l10x11 l9x12)(road l10x12 l9x13)(road l10x13 l9x14)(road l10x14 l9x15)(road l10x15 l9x16)(road l10x16 l9x17)(road l10x17 l9x18)(road l10x18 l9x19)(road l10x19 l9x20)(road l10x20 l9x21)(sparein l10x1)(sparein l10x2)(sparein l10x3)(sparein l10x4)(sparein l10x5)(sparein l10x6)(sparein l10x7)(sparein l10x8)(sparein l10x9)(sparein l10x10)(sparein l10x11)(sparein l10x12)(sparein l10x13)(sparein l10x14)(sparein l10x15)(sparein l10x16)(sparein l10x17)(sparein l10x18)(sparein l10x19)(sparein l10x20)(road l11x1 l11x2)(road l11x2 l11x3)(road l11x3 l11x4)(road l11x4 l11x5)(road l11x5 l11x6)(road l11x6 l11x7)(road l11x7 l11x8)(road l11x8 l11x9)(road l11x9 l11x10)(road l11x10 l11x11)(road l11x11 l11x12)(road l11x12 l11x13)(road l11x13 l11x14)(road l11x14 l11x15)(road l11x15 l11x16)(road l11x16 l11x17)(road l11x17 l11x18)(road l11x18 l11x19)(road l10x1 l11x1)(road l10x3 l11x3)(road l10x5 l11x5)(road l10x7 l11x7)(road l10x9 l11x9)(road l10x11 l11x11)(road l10x13 l11x13)(road l10x15 l11x15)(road l10x17 l11x17)(road l10x19 l11x19)(road l11x1 l10x2)(road l11x3 l10x4)(road l11x5 l10x6)(road l11x7 l10x8)(road l11x9 l10x10)(road l11x11 l10x12)(road l11x13 l10x14)(road l11x15 l10x16)(road l11x17 l10x18)(road l11x19 l10x20)(sparein l11x1)(sparein l11x19)(road l11x1 l12x1)(road l11x2 l12x2)(road l11x3 l12x3)(road l11x4 l12x4)(road l11x5 l12x5)(road l11x6 l12x6)(road l11x7 l12x7)(road l11x8 l12x8)(road l11x9 l12x9)(road l11x10 l12x10)(road l11x11 l12x11)(road l11x12 l12x12)(road l11x13 l12x13)(road l11x14 l12x14)(road l11x15 l12x15)(road l11x16 l12x16)(road l11x17 l12x17)(road l11x18 l12x18)(road l12x1 l11x2)(road l12x2 l11x3)(road l12x3 l11x4)(road l12x4 l11x5)(road l12x5 l11x6)(road l12x6 l11x7)(road l12x7 l11x8)(road l12x8 l11x9)(road l12x9 l11x10)(road l12x10 l11x11)(road l12x11 l11x12)(road l12x12 l11x13)(road l12x13 l11x14)(road l12x14 l11x15)(road l12x15 l11x16)(road l12x16 l11x17)(road l12x17 l11x18)(road l12x18 l11x19)(sparein l12x1)(sparein l12x2)(sparein l12x3)(sparein l12x4)(sparein l12x5)(sparein l12x6)(sparein l12x7)(sparein l12x8)(sparein l12x9)(sparein l12x10)(sparein l12x11)(sparein l12x12)(sparein l12x13)(sparein l12x14)(sparein l12x15)(sparein l12x16)(sparein l12x17)(sparein l12x18)(road l13x1 l13x2)(road l13x2 l13x3)(road l13x3 l13x4)(road l13x4 l13x5)(road l13x5 l13x6)(road l13x6 l13x7)(road l13x7 l13x8)(road l13x8 l13x9)(road l13x9 l13x10)(road l13x10 l13x11)(road l13x11 l13x12)(road l13x12 l13x13)(road l13x13 l13x14)(road l13x14 l13x15)(road l13x15 l13x16)(road l13x16 l13x17)(road l12x1 l13x1)(road l12x3 l13x3)(road l12x5 l13x5)(road l12x7 l13x7)(road l12x9 l13x9)(road l12x11 l13x11)(road l12x13 l13x13)(road l12x15 l13x15)(road l12x17 l13x17)(road l13x1 l12x2)(road l13x3 l12x4)(road l13x5 l12x6)(road l13x7 l12x8)(road l13x9 l12x10)(road l13x11 l12x12)(road l13x13 l12x14)(road l13x15 l12x16)(road l13x17 l12x18)(sparein l13x1)(sparein l13x17)(road l13x1 l14x1)(road l13x2 l14x2)(road l13x3 l14x3)(road l13x4 l14x4)(road l13x5 l14x5)(road l13x6 l14x6)(road l13x7 l14x7)(road l13x8 l14x8)(road l13x9 l14x9)(road l13x10 l14x10)(road l13x11 l14x11)(road l13x12 l14x12)(road l13x13 l14x13)(road l13x14 l14x14)(road l13x15 l14x15)(road l13x16 l14x16)(road l14x1 l13x2)(road l14x2 l13x3)(road l14x3 l13x4)(road l14x4 l13x5)(road l14x5 l13x6)(road l14x6 l13x7)(road l14x7 l13x8)(road l14x8 l13x9)(road l14x9 l13x10)(road l14x10 l13x11)(road l14x11 l13x12)(road l14x12 l13x13)(road l14x13 l13x14)(road l14x14 l13x15)(road l14x15 l13x16)(road l14x16 l13x17)(sparein l14x1)(sparein l14x2)(sparein l14x3)(sparein l14x4)(sparein l14x5)(sparein l14x6)(sparein l14x7)(sparein l14x8)(sparein l14x9)(sparein l14x10)(sparein l14x11)(sparein l14x12)(sparein l14x13)(sparein l14x14)(sparein l14x15)(sparein l14x16)(road l15x1 l15x2)(road l15x2 l15x3)(road l15x3 l15x4)(road l15x4 l15x5)(road l15x5 l15x6)(road l15x6 l15x7)(road l15x7 l15x8)(road l15x8 l15x9)(road l15x9 l15x10)(road l15x10 l15x11)(road l15x11 l15x12)(road l15x12 l15x13)(road l15x13 l15x14)(road l15x14 l15x15)(road l14x1 l15x1)(road l14x3 l15x3)(road l14x5 l15x5)(road l14x7 l15x7)(road l14x9 l15x9)(road l14x11 l15x11)(road l14x13 l15x13)(road l14x15 l15x15)(road l15x1 l14x2)(road l15x3 l14x4)(road l15x5 l14x6)(road l15x7 l14x8)(road l15x9 l14x10)(road l15x11 l14x12)(road l15x13 l14x14)(road l15x15 l14x16)(sparein l15x1)(sparein l15x15)(road l15x1 l16x1)(road l15x2 l16x2)(road l15x3 l16x3)(road l15x4 l16x4)(road l15x5 l16x5)(road l15x6 l16x6)(road l15x7 l16x7)(road l15x8 l16x8)(road l15x9 l16x9)(road l15x10 l16x10)(road l15x11 l16x11)(road l15x12 l16x12)(road l15x13 l16x13)(road l15x14 l16x14)(road l16x1 l15x2)(road l16x2 l15x3)(road l16x3 l15x4)(road l16x4 l15x5)(road l16x5 l15x6)(road l16x6 l15x7)(road l16x7 l15x8)(road l16x8 l15x9)(road l16x9 l15x10)(road l16x10 l15x11)(road l16x11 l15x12)(road l16x12 l15x13)(road l16x13 l15x14)(road l16x14 l15x15)(sparein l16x1)(sparein l16x2)(sparein l16x3)(sparein l16x4)(sparein l16x5)(sparein l16x6)(sparein l16x7)(sparein l16x8)(sparein l16x9)(sparein l16x10)(sparein l16x11)(sparein l16x12)(sparein l16x13)(sparein l16x14)(road l17x1 l17x2)(road l17x2 l17x3)(road l17x3 l17x4)(road l17x4 l17x5)(road l17x5 l17x6)(road l17x6 l17x7)(road l17x7 l17x8)(road l17x8 l17x9)(road l17x9 l17x10)(road l17x10 l17x11)(road l17x11 l17x12)(road l17x12 l17x13)(road l16x1 l17x1)(road l16x3 l17x3)(road l16x5 l17x5)(road l16x7 l17x7)(road l16x9 l17x9)(road l16x11 l17x11)(road l16x13 l17x13)(road l17x1 l16x2)(road l17x3 l16x4)(road l17x5 l16x6)(road l17x7 l16x8)(road l17x9 l16x10)(road l17x11 l16x12)(road l17x13 l16x14)(sparein l17x1)(sparein l17x13)(road l17x1 l18x1)(road l17x2 l18x2)(road l17x3 l18x3)(road l17x4 l18x4)(road l17x5 l18x5)(road l17x6 l18x6)(road l17x7 l18x7)(road l17x8 l18x8)(road l17x9 l18x9)(road l17x10 l18x10)(road l17x11 l18x11)(road l17x12 l18x12)(road l18x1 l17x2)(road l18x2 l17x3)(road l18x3 l17x4)(road l18x4 l17x5)(road l18x5 l17x6)(road l18x6 l17x7)(road l18x7 l17x8)(road l18x8 l17x9)(road l18x9 l17x10)(road l18x10 l17x11)(road l18x11 l17x12)(road l18x12 l17x13)(sparein l18x1)(sparein l18x2)(sparein l18x3)(sparein l18x4)(sparein l18x5)(sparein l18x6)(sparein l18x7)(sparein l18x8)(sparein l18x9)(sparein l18x10)(sparein l18x11)(sparein l18x12)(road l19x1 l19x2)(road l19x2 l19x3)(road l19x3 l19x4)(road l19x4 l19x5)(road l19x5 l19x6)(road l19x6 l19x7)(road l19x7 l19x8)(road l19x8 l19x9)(road l19x9 l19x10)(road l19x10 l19x11)(road l18x1 l19x1)(road l18x3 l19x3)(road l18x5 l19x5)(road l18x7 l19x7)(road l18x9 l19x9)(road l18x11 l19x11)(road l19x1 l18x2)(road l19x3 l18x4)(road l19x5 l18x6)(road l19x7 l18x8)(road l19x9 l18x10)(road l19x11 l18x12)(sparein l19x1)(sparein l19x11)(road l19x1 l20x1)(road l19x2 l20x2)(road l19x3 l20x3)(road l19x4 l20x4)(road l19x5 l20x5)(road l19x6 l20x6)(road l19x7 l20x7)(road l19x8 l20x8)(road l19x9 l20x9)(road l19x10 l20x10)(road l20x1 l19x2)(road l20x2 l19x3)(road l20x3 l19x4)(road l20x4 l19x5)(road l20x5 l19x6)(road l20x6 l19x7)(road l20x7 l19x8)(road l20x8 l19x9)(road l20x9 l19x10)(road l20x10 l19x11)(sparein l20x1)(sparein l20x2)(sparein l20x3)(sparein l20x4)(sparein l20x5)(sparein l20x6)(sparein l20x7)(sparein l20x8)(sparein l20x9)(sparein l20x10)(road l21x1 l21x2)(road l21x2 l21x3)(road l21x3 l21x4)(road l21x4 l21x5)(road l21x5 l21x6)(road l21x6 l21x7)(road l21x7 l21x8)(road l21x8 l21x9)(road l20x1 l21x1)(road l20x3 l21x3)(road l20x5 l21x5)(road l20x7 l21x7)(road l20x9 l21x9)(road l21x1 l20x2)(road l21x3 l20x4)(road l21x5 l20x6)(road l21x7 l20x8)(road l21x9 l20x10)(sparein l21x1)(sparein l21x9)(road l21x1 l22x1)(road l21x2 l22x2)(road l21x3 l22x3)(road l21x4 l22x4)(road l21x5 l22x5)(road l21x6 l22x6)(road l21x7 l22x7)(road l21x8 l22x8)(road l22x1 l21x2)(road l22x2 l21x3)(road l22x3 l21x4)(road l22x4 l21x5)(road l22x5 l21x6)(road l22x6 l21x7)(road l22x7 l21x8)(road l22x8 l21x9)(sparein l22x1)(sparein l22x2)(sparein l22x3)(sparein l22x4)(sparein l22x5)(sparein l22x6)(sparein l22x7)(sparein l22x8)(road l23x1 l23x2)(road l23x2 l23x3)(road l23x3 l23x4)(road l23x4 l23x5)(road l23x5 l23x6)(road l23x6 l23x7)(road l22x1 l23x1)(road l22x3 l23x3)(road l22x5 l23x5)(road l22x7 l23x7)(road l23x1 l22x2)(road l23x3 l22x4)(road l23x5 l22x6)(road l23x7 l22x8)(sparein l23x1)(sparein l23x7)(road l23x1 l24x1)(road l23x2 l24x2)(road l23x3 l24x3)(road l23x4 l24x4)(road l23x5 l24x5)(road l23x6 l24x6)(road l24x1 l23x2)(road l24x2 l23x3)(road l24x3 l23x4)(road l24x4 l23x5)(road l24x5 l23x6)(road l24x6 l23x7)(sparein l24x1)(sparein l24x2)(sparein l24x3)(sparein l24x4)(sparein l24x5)(sparein l24x6)(road l25x1 l25x2)(road l25x2 l25x3)(road l25x3 l25x4)(road l25x4 l25x5)(road l24x1 l25x1)(road l24x3 l25x3)(road l24x5 l25x5)(road l25x1 l24x2)(road l25x3 l24x4)(road l25x5 l24x6)(sparein l25x1)(sparein l25x5)(road l25x1 l26x1)(road l25x2 l26x2)(road l25x3 l26x3)(road l25x4 l26x4)(road l26x1 l25x2)(road l26x2 l25x3)(road l26x3 l25x4)(road l26x4 l25x5)(sparein l26x1)(sparein l26x2)(sparein l26x3)(sparein l26x4)(road l27x1 l27x2)(road l27x2 l27x3)(road l26x1 l27x1)(road l26x3 l27x3)(road l27x1 l26x2)(road l27x3 l26x4)(sparein l27x1)(sparein l27x3)(road l27x1 l28x1)(road l27x2 l28x2)(road l28x1 l27x2)(road l28x2 l27x3)(sparein l28x1)(sparein l28x2)(road l28x1 l29x1)(road l29x1 l28x2)(sparein l29x1)(sparein l29x1)(notflattire))(:goal (vehicleat l1x29)))