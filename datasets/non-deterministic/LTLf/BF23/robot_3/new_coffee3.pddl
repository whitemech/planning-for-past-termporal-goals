
(define (problem coffee1)
   (:domain robot_coffee)
   (:objects lab o1 o2 o3 o4 o5 o6 - office
             c - kitchen)
   (:init (robot_at lab)
          (connected lab o1)
          (connected o1 lab)
          (connected c o1)
          (connected o1 c)
          (connected o1 o2)
          (connected o2 o1)
          (connected o1 o3)
          (connected o3 o1)
          (connected o1 o4)
          (connected o4 o1)
          (connected o1 o5)
(connected o5 o1)
(connected o1 o6)
(connected o6 o1)

          (connected o2 o3)
          (connected o3 o2)
          (connected o3 o4)
          (connected o4 o3)
          (connected o4 o5)
(connected o5 o4)
(connected o5 o6)
(connected o6 o5))

	(:goal (and (robot_at c)))
)
