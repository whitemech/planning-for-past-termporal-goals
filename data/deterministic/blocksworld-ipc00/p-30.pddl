(define (problem BLOCKS-14-1)
(:domain blocks-domain)
(:objects K A F L D B M E J N H I C G )
(:INIT (CLEAR G) (CLEAR C) (CLEAR I) (CLEAR H) (CLEAR N) (ONTABLE J)
 (ONTABLE E) (ONTABLE M) (ONTABLE B) (ONTABLE N) (ON G J) (ON C E) (ON I D)
 (ON D L) (ON L M) (ON H F) (ON F A) (ON A K) (ON K B) (HANDEMPTY))
(:goal (AND (ON J D) (ON D B) (ON B H) (ON H M) (ON M K) (ON K F) (ON F G)
            (ON G A) (ON A I) (ON I E) (ON E L) (ON L N) (ON N C)))
)