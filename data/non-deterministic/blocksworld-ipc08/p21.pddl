(define (problem bw_15_21)
  (:domain blocks-domain)
  (:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 - block)
  (:init (emptyhand) (on b1 b13) (on b2 b4) (on b3 b15) (on b4 b8) (ontable b5) (on b6 b12) (on b7 b11) (on b8 b9) (on b9 b1) (on b10 b7) (ontable b11) (on b12 b3) (on b13 b6) (on b14 b10) (on b15 b14) (clear b2) (clear b5))
  (:goal (and (emptyhand) (on b1 b6) (on b2 b1) (on b3 b12) (ontable b4) (on b5 b3) (ontable b6) (ontable b7) (on b8 b9) (ontable b9) (on b10 b5) (on b11 b2) (on b12 b8) (on b13 b15) (on b14 b11) (on b15 b14) (clear b4) (clear b7) (clear b10) (clear b13)))
)
