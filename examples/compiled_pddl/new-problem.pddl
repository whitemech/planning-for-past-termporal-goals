(define (problem blocks-4-0)
    (:domain blocks)
    (:objects a - block b - block c - block d - block)
    (:init (clear a) (clear c) (handempty) (on a b) (on c d) (ontable b) (ontable d))
    (:goal (val_ontable_c-and-Oon_b_a))
)