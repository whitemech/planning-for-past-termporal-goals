(define (problem bw_7)
    (:domain blocks-domain)
    (:objects b1 b2 b3 b4 b5 b6 b7)
    (:init (act) (clear b1) (clear b2) (clear b3) (clear b4) (clear b5) (clear b6) (clear b7) (emptyhand) (on-table b1) (on-table b2) (on-table b3) (on-table b4) (on-table b5) (on-table b6) (on-table b7))
    (:goal (and (val_Oon_b1_b2-and-YOon_b2_b3) (act)))
)