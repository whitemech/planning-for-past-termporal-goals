(define (problem bw_10)
  (:domain blocks-domain)
  (:objects b1 b2 b3 b4 b5 b6 b7 b8 - block)
  (:init (emptyhand) (ontable b1) (ontable b2) (ontable b3) (ontable b4) (ontable b5) (ontable b6) (ontable b7) (ontable b8) (clear b1) (clear b2) (clear b3) (clear b4) (clear b5) (clear b6) (clear b7) (clear b8))
  (:goal (and (emptyhand)))
)
