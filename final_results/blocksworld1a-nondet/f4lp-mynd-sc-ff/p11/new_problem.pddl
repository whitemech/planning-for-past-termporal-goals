(define (problem bw_11)
	(:domain blocks-domain)
	(:objects b1 - block b2 - block b3 - block b4 - block b5 - block b6 - block b7 - block b8 - block b9 - block b10 - block b11 - block)
	(:init (clear b1) (clear b10) (clear b11) (clear b2) (clear b3) (clear b4) (clear b5) (clear b6) (clear b7) (clear b8) (clear b9) (emptyhand) (on-table b1) (on-table b10) (on-table b11) (on-table b2) (on-table b3) (on-table b4) (on-table b5) (on-table b6) (on-table b7) (on-table b8) (on-table b9) (q1 b1 b2 b3) (turnDomain))
(:goal (and (q3 b1 b2 b3) (turnDomain)))
)