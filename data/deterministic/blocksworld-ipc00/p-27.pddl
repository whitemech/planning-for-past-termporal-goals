(define (problem BLOCKS-13-0)
(:domain blocks-domain)
(:objects L H E A J C D F G K M I B )
(:INIT (CLEAR B) (CLEAR I) (CLEAR M) (ONTABLE K) (ONTABLE G) (ONTABLE M)
 (ON B F) (ON F D) (ON D C) (ON C J) (ON J A) (ON A E) (ON E H) (ON H L)
 (ON L K) (ON I G) (HANDEMPTY))
(:goal (AND (ON G I) (ON I C) (ON C D) (ON D F) (ON F A) (ON A M) (ON M H)
            (ON H E) (ON E L) (ON L J) (ON J B) (ON B K)))
)