(define (problem bw_26)
  (:domain blocks-domain)
  (:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 - block)
  (:init (emptyhand) (ontable b1) (ontable b2) (ontable b3) (ontable b4) (ontable b5) (ontable b6) (ontable b7) (ontable b8) (ontable b9) (ontable b10) (ontable b11) (ontable b12) (ontable b13) (ontable b14) (ontable b15) (ontable b16) (ontable b17) (ontable b18) (ontable b19) (ontable b20) (ontable b21) (ontable b22) (ontable b23) (ontable b24) (ontable b25) (ontable b26) (clear b1) (clear b2) (clear b3) (clear b4) (clear b5) (clear b6) (clear b7) (clear b8) (clear b9) (clear b10) (clear b11) (clear b12) (clear b13) (clear b14) (clear b15) (clear b16) (clear b17) (clear b18) (clear b19) (clear b20) (clear b21) (clear b22) (clear b23) (clear b24) (clear b25) (clear b26))
  

 (:goal (and 

            (eventually (and (on b2 b1) (next 
                (eventually (and (on b3 b2) (next
                    (eventually (and (on b4 b3)
                        (next (eventually (on b6 b5))) (next (eventually (on b8 b7))) (next (eventually (on b10 b9))) (next (eventually (on b12 b11))) (next (eventually (on b14 b13))) (next (eventually (on b16 b15))) (next (eventually (on b18 b17))) (next (eventually (on b20 b19))) (next (eventually (on b22 b21))) (next (eventually (on b24 b23))) (next (eventually (on b26 b25)))
                    ))))))))
            
(eventually (and (on b25 b26) (next (eventually (and (on b24 b25) (next (eventually (and (on b23 b24) (next (eventually (and (on b22 b23) (next (eventually (and (on b21 b22) (next (eventually (and (on b20 b21) (next (eventually (and (on b19 b20) (next (eventually (and (on b18 b19) (next (eventually (and (on b17 b18) (next (eventually (and (on b16 b17) (next (eventually (and (on b15 b16) (next (eventually (and (on b14 b15) (next (eventually (and (on b13 b14) (next (eventually (and (on b12 b13) (next (eventually (and (on b11 b12) (next (eventually (and (on b10 b11) (next (eventually (and (on b9 b10) (next (eventually (and (on b8 b9) (next (eventually (and (on b7 b8) (next (eventually (and (on b6 b7) (next (eventually (and (on b5 b6) (next (eventually (and (on b4 b5) (next (eventually (and (on b3 b4) (next (eventually (and (on b2 b3) (next (eventually (on b1 b2)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) 

)