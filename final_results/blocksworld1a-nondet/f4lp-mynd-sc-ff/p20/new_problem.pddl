(define (problem bw_20)
	(:domain blocks-domain)
	(:objects b1 - block b2 - block b3 - block b4 - block b5 - block b6 - block b7 - block b8 - block b9 - block b10 - block b11 - block b12 - block b13 - block b14 - block b15 - block b16 - block b17 - block b18 - block b19 - block b20 - block)
	(:init (clear b1) (clear b10) (clear b11) (clear b12) (clear b13) (clear b14) (clear b15) (clear b16) (clear b17) (clear b18) (clear b19) (clear b2) (clear b20) (clear b3) (clear b4) (clear b5) (clear b6) (clear b7) (clear b8) (clear b9) (emptyhand) (on-table b1) (on-table b10) (on-table b11) (on-table b12) (on-table b13) (on-table b14) (on-table b15) (on-table b16) (on-table b17) (on-table b18) (on-table b19) (on-table b2) (on-table b20) (on-table b3) (on-table b4) (on-table b5) (on-table b6) (on-table b7) (on-table b8) (on-table b9) (q1 b1 b2 b3) (turnDomain))
(:goal (and (q3 b1 b2 b3) (turnDomain)))
)