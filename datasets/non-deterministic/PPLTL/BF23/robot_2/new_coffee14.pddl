
(define (problem coffee1)
   (:domain robot_coffee)
   (:objects lab o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16 o17 - office
             c - kitchen)
   (:init (robotat lab)
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
(connected o1 o7)
(connected o7 o1)
(connected o1 o8)
(connected o8 o1)
(connected o1 o9)
(connected o9 o1)
(connected o1 o10)
(connected o10 o1)
(connected o1 o11)
(connected o11 o1)
(connected o1 o12)
(connected o12 o1)
(connected o1 o13)
(connected o13 o1)
(connected o1 o14)
(connected o14 o1)
(connected o1 o15)
(connected o15 o1)
(connected o1 o16)
(connected o16 o1)
(connected o1 o17)
(connected o17 o1)

          (connected o2 o3)
          (connected o3 o2)
          (connected o3 o4)
          (connected o4 o3)
          (connected o4 o5)
(connected o5 o4)
(connected o5 o6)
(connected o6 o5)
(connected o6 o7)
(connected o7 o6)
(connected o7 o8)
(connected o8 o7)
(connected o8 o9)
(connected o9 o8)
(connected o9 o10)
(connected o10 o9)
(connected o10 o11)
(connected o11 o10)
(connected o11 o12)
(connected o12 o11)
(connected o12 o13)
(connected o13 o12)
(connected o13 o14)
(connected o14 o13)
(connected o14 o15)
(connected o15 o14)
(connected o15 o16)
(connected o16 o15)
(connected o16 o17)
(connected o17 o16))

	(:goal (and (robotat c)))
)
