(define (problem sussman-anomaly)       ; graphplan 3 steps
    (:domain blocks-world-domain)
  (:objects A B C D E F G H)
  (:init (block A) (block B) (block C) (block Table) (block D) (block E) (block F)
	 (on C A) (on A Table) (on B Table) (on D C) (on E Table) (on F Table)
	 (clear D) (clear B) (clear Table) (clear E) (clear F)
   (block G) (on G Table) (clear G)
   (block H) (on H Table) (clear H))
  (:goal  (and (on A B)))
)
