(define (problem bw_2)
    (:domain blocks-domain)
    (:objects b1 b2)
    (:init (clear b1) (clear b2) (emptyhand) (ontable b1) (ontable b2))
    (:goal (val_Oon_b1_b2))
)