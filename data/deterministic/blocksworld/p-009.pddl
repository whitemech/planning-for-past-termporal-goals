(define (problem blocks-6-2)
(:domain blocks-domain)
(:objects e f b d c a - block)
(:init (clear a) (ontable c) (on a d) (on d b) (on b f) (on f e) (on e c)
 (emptyhand))
(:goal (and (on e f) (on f a) (on a b) (on b c) (on c d)))
)