(define (problem blocks-7-0)
(:domain blocks-domain)
(:objects c f a b g d e - block)
(:init (clear e) (ontable d) (on e g) (on g b) (on b a) (on a f) (on f c)
 (on c d) (emptyhand))
(:goal (and (on a g) (on g d) (on d b) (on b c) (on c f) (on f e)))
)