(define (problem BLOCKS-14-0)
(:domain blocks-domain)
(:objects I D B L C K M H J N E F G A )
(:INIT (CLEAR A) (CLEAR G) (CLEAR F) (ONTABLE E) (ONTABLE N) (ONTABLE F)
 (ON A J) (ON J H) (ON H M) (ON M K) (ON K C) (ON C L) (ON L B) (ON B E)
 (ON G D) (ON D I) (ON I N) (HANDEMPTY))
(:goal (AND (ON E L) (ON L F) (ON F B) (ON B J) (ON J I) (ON I N) (ON N C)
            (ON C K) (ON K G) (ON G D) (ON D M) (ON M A) (ON A H)))
)