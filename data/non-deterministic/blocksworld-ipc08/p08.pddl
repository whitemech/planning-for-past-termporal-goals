(define (problem bw_5_8)
  (:domain blocks-domain)
  (:objects b1 b2 b3 b4 b5 - block)
  (:init (emptyhand) (on b1 b2) (on b2 b4) (on b3 b1) (on b4 b5) (ontable b5) (clear b3))
  (:goal (and (emptyhand) (ontable b1) (ontable b2) (on b3 b2) (on b4 b3) (on b5 b4) (clear b1) (clear b5)))
)
