(define (problem bw_10_19)
    (:domain blocks-domain)
    (:objects b1 b10 b2 b3 b4 b5 b6 b7 b8 b9)
    (:init (act) (clear b5) (clear b6) (emptyhand) (on b1 b3) (on b10 b8) (on b2 b9) (on b3 b2) (on b5 b1) (on b6 b10) (on b7 b4) (on b9 b7) (on-table b4) (on-table b8))
    (:goal (and (val_emptyhand-and-on-table_b1-and-on_b2_b9-and-on_b3_b7-and-on_b4_b10-and-on_b5_b2-and-on_b6_b1-and-on-table_b7-and-on_b8_b4-and-on-table_b9-and-on_b10_b6-and-clear_b3-and-clear_b5-and-clear_b8) (act)))
)