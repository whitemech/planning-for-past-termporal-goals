(define (problem bw_5)
(:domain blocks-domain)
(:objects b1 b2 b3 b4 b5 - block q0 - qstate q1 - qstate q2 - qstate q3 - qstate q4 - qstate q5 - qstate)
(:init (emptyhand) (on-table b1) (on-table b2) (on-table b3) (on-table b4) (on-table b5) (clear b1) (clear b2) (clear b3) (clear b4) (clear b5) (prev_autstate q1) (is_accepting q4))
(:goal (dummy_goal))
)
