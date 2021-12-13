(define (problem roverprob7182) (:domain Rover)
(:objects
	general - Lander
	colour high_res low_res - Mode
	rover0 rover1 rover2 rover3 rover4 rover5 rover6 rover7 - Rover
	rover0store rover1store rover2store rover3store rover4store rover5store rover6store rover7store - Store
	waypoint0 waypoint1 waypoint2 waypoint3 waypoint4 waypoint5 waypoint6 waypoint7 waypoint8 waypoint9 waypoint10 waypoint11 waypoint12 waypoint13 waypoint14 waypoint15 waypoint16 waypoint17 waypoint18 waypoint19 waypoint20 waypoint21 waypoint22 waypoint23 waypoint24 - Waypoint
	camera0 camera1 camera2 camera3 camera4 camera5 camera6 - Camera
	objective0 objective1 objective2 objective3 objective4 objective5 objective6 objective7 - Objective
	)
(:init
	(visible waypoint0 waypoint5)
	(visible waypoint5 waypoint0)
	(visible waypoint0 waypoint15)
	(visible waypoint15 waypoint0)
	(visible waypoint0 waypoint23)
	(visible waypoint23 waypoint0)
	(visible waypoint1 waypoint23)
	(visible waypoint23 waypoint1)
	(visible waypoint2 waypoint1)
	(visible waypoint1 waypoint2)
	(visible waypoint2 waypoint5)
	(visible waypoint5 waypoint2)
	(visible waypoint2 waypoint6)
	(visible waypoint6 waypoint2)
	(visible waypoint2 waypoint14)
	(visible waypoint14 waypoint2)
	(visible waypoint2 waypoint16)
	(visible waypoint16 waypoint2)
	(visible waypoint2 waypoint23)
	(visible waypoint23 waypoint2)
	(visible waypoint3 waypoint1)
	(visible waypoint1 waypoint3)
	(visible waypoint3 waypoint13)
	(visible waypoint13 waypoint3)
	(visible waypoint3 waypoint15)
	(visible waypoint15 waypoint3)
	(visible waypoint3 waypoint18)
	(visible waypoint18 waypoint3)
	(visible waypoint3 waypoint20)
	(visible waypoint20 waypoint3)
	(visible waypoint4 waypoint1)
	(visible waypoint1 waypoint4)
	(visible waypoint4 waypoint6)
	(visible waypoint6 waypoint4)
	(visible waypoint4 waypoint13)
	(visible waypoint13 waypoint4)
	(visible waypoint4 waypoint16)
	(visible waypoint16 waypoint4)
	(visible waypoint4 waypoint19)
	(visible waypoint19 waypoint4)
	(visible waypoint4 waypoint20)
	(visible waypoint20 waypoint4)
	(visible waypoint5 waypoint1)
	(visible waypoint1 waypoint5)
	(visible waypoint5 waypoint4)
	(visible waypoint4 waypoint5)
	(visible waypoint5 waypoint8)
	(visible waypoint8 waypoint5)
	(visible waypoint5 waypoint16)
	(visible waypoint16 waypoint5)
	(visible waypoint6 waypoint5)
	(visible waypoint5 waypoint6)
	(visible waypoint6 waypoint8)
	(visible waypoint8 waypoint6)
	(visible waypoint6 waypoint9)
	(visible waypoint9 waypoint6)
	(visible waypoint6 waypoint11)
	(visible waypoint11 waypoint6)
	(visible waypoint6 waypoint21)
	(visible waypoint21 waypoint6)
	(visible waypoint7 waypoint0)
	(visible waypoint0 waypoint7)
	(visible waypoint7 waypoint4)
	(visible waypoint4 waypoint7)
	(visible waypoint7 waypoint8)
	(visible waypoint8 waypoint7)
	(visible waypoint7 waypoint16)
	(visible waypoint16 waypoint7)
	(visible waypoint7 waypoint17)
	(visible waypoint17 waypoint7)
	(visible waypoint8 waypoint4)
	(visible waypoint4 waypoint8)
	(visible waypoint8 waypoint16)
	(visible waypoint16 waypoint8)
	(visible waypoint8 waypoint17)
	(visible waypoint17 waypoint8)
	(visible waypoint9 waypoint2)
	(visible waypoint2 waypoint9)
	(visible waypoint9 waypoint5)
	(visible waypoint5 waypoint9)
	(visible waypoint9 waypoint7)
	(visible waypoint7 waypoint9)
	(visible waypoint9 waypoint14)
	(visible waypoint14 waypoint9)
	(visible waypoint9 waypoint17)
	(visible waypoint17 waypoint9)
	(visible waypoint10 waypoint11)
	(visible waypoint11 waypoint10)
	(visible waypoint10 waypoint15)
	(visible waypoint15 waypoint10)
	(visible waypoint11 waypoint8)
	(visible waypoint8 waypoint11)
	(visible waypoint11 waypoint19)
	(visible waypoint19 waypoint11)
	(visible waypoint12 waypoint3)
	(visible waypoint3 waypoint12)
	(visible waypoint12 waypoint6)
	(visible waypoint6 waypoint12)
	(visible waypoint12 waypoint11)
	(visible waypoint11 waypoint12)
	(visible waypoint12 waypoint13)
	(visible waypoint13 waypoint12)
	(visible waypoint12 waypoint19)
	(visible waypoint19 waypoint12)
	(visible waypoint12 waypoint22)
	(visible waypoint22 waypoint12)
	(visible waypoint12 waypoint23)
	(visible waypoint23 waypoint12)
	(visible waypoint12 waypoint24)
	(visible waypoint24 waypoint12)
	(visible waypoint13 waypoint14)
	(visible waypoint14 waypoint13)
	(visible waypoint13 waypoint15)
	(visible waypoint15 waypoint13)
	(visible waypoint13 waypoint20)
	(visible waypoint20 waypoint13)
	(visible waypoint14 waypoint0)
	(visible waypoint0 waypoint14)
	(visible waypoint14 waypoint1)
	(visible waypoint1 waypoint14)
	(visible waypoint14 waypoint5)
	(visible waypoint5 waypoint14)
	(visible waypoint14 waypoint6)
	(visible waypoint6 waypoint14)
	(visible waypoint14 waypoint8)
	(visible waypoint8 waypoint14)
	(visible waypoint14 waypoint12)
	(visible waypoint12 waypoint14)
	(visible waypoint14 waypoint20)
	(visible waypoint20 waypoint14)
	(visible waypoint15 waypoint1)
	(visible waypoint1 waypoint15)
	(visible waypoint15 waypoint6)
	(visible waypoint6 waypoint15)
	(visible waypoint15 waypoint12)
	(visible waypoint12 waypoint15)
	(visible waypoint15 waypoint16)
	(visible waypoint16 waypoint15)
	(visible waypoint16 waypoint10)
	(visible waypoint10 waypoint16)
	(visible waypoint16 waypoint20)
	(visible waypoint20 waypoint16)
	(visible waypoint17 waypoint11)
	(visible waypoint11 waypoint17)
	(visible waypoint17 waypoint14)
	(visible waypoint14 waypoint17)
	(visible waypoint17 waypoint15)
	(visible waypoint15 waypoint17)
	(visible waypoint17 waypoint18)
	(visible waypoint18 waypoint17)
	(visible waypoint17 waypoint20)
	(visible waypoint20 waypoint17)
	(visible waypoint18 waypoint0)
	(visible waypoint0 waypoint18)
	(visible waypoint18 waypoint1)
	(visible waypoint1 waypoint18)
	(visible waypoint18 waypoint6)
	(visible waypoint6 waypoint18)
	(visible waypoint18 waypoint8)
	(visible waypoint8 waypoint18)
	(visible waypoint18 waypoint9)
	(visible waypoint9 waypoint18)
	(visible waypoint18 waypoint10)
	(visible waypoint10 waypoint18)
	(visible waypoint19 waypoint6)
	(visible waypoint6 waypoint19)
	(visible waypoint19 waypoint21)
	(visible waypoint21 waypoint19)
	(visible waypoint20 waypoint19)
	(visible waypoint19 waypoint20)
	(visible waypoint21 waypoint4)
	(visible waypoint4 waypoint21)
	(visible waypoint21 waypoint5)
	(visible waypoint5 waypoint21)
	(visible waypoint21 waypoint8)
	(visible waypoint8 waypoint21)
	(visible waypoint21 waypoint11)
	(visible waypoint11 waypoint21)
	(visible waypoint21 waypoint13)
	(visible waypoint13 waypoint21)
	(visible waypoint21 waypoint17)
	(visible waypoint17 waypoint21)
	(visible waypoint21 waypoint18)
	(visible waypoint18 waypoint21)
	(visible waypoint22 waypoint11)
	(visible waypoint11 waypoint22)
	(visible waypoint22 waypoint16)
	(visible waypoint16 waypoint22)
	(visible waypoint22 waypoint21)
	(visible waypoint21 waypoint22)
	(visible waypoint23 waypoint10)
	(visible waypoint10 waypoint23)
	(visible waypoint23 waypoint18)
	(visible waypoint18 waypoint23)
	(visible waypoint23 waypoint20)
	(visible waypoint20 waypoint23)
	(visible waypoint24 waypoint5)
	(visible waypoint5 waypoint24)
	(visible waypoint24 waypoint7)
	(visible waypoint7 waypoint24)
	(visible waypoint24 waypoint18)
	(visible waypoint18 waypoint24)
	(visible waypoint24 waypoint20)
	(visible waypoint20 waypoint24)
	(visible waypoint24 waypoint23)
	(visible waypoint23 waypoint24)
	(atsoilsample waypoint0)
	(atsoilsample waypoint1)
	(atsoilsample waypoint7)
	(atrocksample waypoint7)
	(atsoilsample waypoint8)
	(atsoilsample waypoint9)
	(atrocksample waypoint9)
	(atrocksample waypoint10)
	(atsoilsample waypoint11)
	(atrocksample waypoint12)
	(atsoilsample waypoint13)
	(atrocksample waypoint14)
	(atsoilsample waypoint15)
	(atrocksample waypoint16)
	(atsoilsample waypoint17)
	(atsoilsample waypoint18)
	(atrocksample waypoint18)
	(atsoilsample waypoint20)
	(atrocksample waypoint21)
	(atsoilsample waypoint22)
	(atrocksample waypoint22)
	(atsoilsample waypoint23)
	(atsoilsample waypoint24)
	(atlander general waypoint1)
	(channelfree general)
	(at rover0 waypoint22)
	(available rover0)
	(storeof rover0store rover0)
	(empty rover0store)
	(equippedforsoilanalysis rover0)
	(equippedforimaging rover0)
	(cantraverse rover0 waypoint22 waypoint11)
	(cantraverse rover0 waypoint11 waypoint22)
	(cantraverse rover0 waypoint22 waypoint12)
	(cantraverse rover0 waypoint12 waypoint22)
	(cantraverse rover0 waypoint22 waypoint21)
	(cantraverse rover0 waypoint21 waypoint22)
	(cantraverse rover0 waypoint11 waypoint6)
	(cantraverse rover0 waypoint6 waypoint11)
	(cantraverse rover0 waypoint11 waypoint8)
	(cantraverse rover0 waypoint8 waypoint11)
	(cantraverse rover0 waypoint11 waypoint10)
	(cantraverse rover0 waypoint10 waypoint11)
	(cantraverse rover0 waypoint11 waypoint17)
	(cantraverse rover0 waypoint17 waypoint11)
	(cantraverse rover0 waypoint11 waypoint19)
	(cantraverse rover0 waypoint19 waypoint11)
	(cantraverse rover0 waypoint12 waypoint13)
	(cantraverse rover0 waypoint13 waypoint12)
	(cantraverse rover0 waypoint12 waypoint15)
	(cantraverse rover0 waypoint15 waypoint12)
	(cantraverse rover0 waypoint12 waypoint24)
	(cantraverse rover0 waypoint24 waypoint12)
	(cantraverse rover0 waypoint21 waypoint4)
	(cantraverse rover0 waypoint4 waypoint21)
	(cantraverse rover0 waypoint21 waypoint5)
	(cantraverse rover0 waypoint5 waypoint21)
	(cantraverse rover0 waypoint21 waypoint18)
	(cantraverse rover0 waypoint18 waypoint21)
	(cantraverse rover0 waypoint6 waypoint2)
	(cantraverse rover0 waypoint2 waypoint6)
	(cantraverse rover0 waypoint6 waypoint9)
	(cantraverse rover0 waypoint9 waypoint6)
	(cantraverse rover0 waypoint6 waypoint14)
	(cantraverse rover0 waypoint14 waypoint6)
	(cantraverse rover0 waypoint8 waypoint7)
	(cantraverse rover0 waypoint7 waypoint8)
	(cantraverse rover0 waypoint17 waypoint20)
	(cantraverse rover0 waypoint20 waypoint17)
	(cantraverse rover0 waypoint13 waypoint3)
	(cantraverse rover0 waypoint3 waypoint13)
	(cantraverse rover0 waypoint15 waypoint1)
	(cantraverse rover0 waypoint1 waypoint15)
	(cantraverse rover0 waypoint15 waypoint16)
	(cantraverse rover0 waypoint16 waypoint15)
	(cantraverse rover0 waypoint24 waypoint23)
	(cantraverse rover0 waypoint23 waypoint24)
	(cantraverse rover0 waypoint5 waypoint0)
	(cantraverse rover0 waypoint0 waypoint5)
	(at rover1 waypoint4)
	(available rover1)
	(storeof rover1store rover1)
	(empty rover1store)
	(equippedforimaging rover1)
	(cantraverse rover1 waypoint4 waypoint1)
	(cantraverse rover1 waypoint1 waypoint4)
	(cantraverse rover1 waypoint4 waypoint5)
	(cantraverse rover1 waypoint5 waypoint4)
	(cantraverse rover1 waypoint4 waypoint6)
	(cantraverse rover1 waypoint6 waypoint4)
	(cantraverse rover1 waypoint4 waypoint13)
	(cantraverse rover1 waypoint13 waypoint4)
	(cantraverse rover1 waypoint4 waypoint16)
	(cantraverse rover1 waypoint16 waypoint4)
	(cantraverse rover1 waypoint4 waypoint19)
	(cantraverse rover1 waypoint19 waypoint4)
	(cantraverse rover1 waypoint4 waypoint20)
	(cantraverse rover1 waypoint20 waypoint4)
	(cantraverse rover1 waypoint4 waypoint21)
	(cantraverse rover1 waypoint21 waypoint4)
	(cantraverse rover1 waypoint1 waypoint14)
	(cantraverse rover1 waypoint14 waypoint1)
	(cantraverse rover1 waypoint1 waypoint15)
	(cantraverse rover1 waypoint15 waypoint1)
	(cantraverse rover1 waypoint1 waypoint18)
	(cantraverse rover1 waypoint18 waypoint1)
	(cantraverse rover1 waypoint5 waypoint0)
	(cantraverse rover1 waypoint0 waypoint5)
	(cantraverse rover1 waypoint5 waypoint2)
	(cantraverse rover1 waypoint2 waypoint5)
	(cantraverse rover1 waypoint5 waypoint8)
	(cantraverse rover1 waypoint8 waypoint5)
	(cantraverse rover1 waypoint5 waypoint9)
	(cantraverse rover1 waypoint9 waypoint5)
	(cantraverse rover1 waypoint5 waypoint24)
	(cantraverse rover1 waypoint24 waypoint5)
	(cantraverse rover1 waypoint6 waypoint11)
	(cantraverse rover1 waypoint11 waypoint6)
	(cantraverse rover1 waypoint6 waypoint12)
	(cantraverse rover1 waypoint12 waypoint6)
	(cantraverse rover1 waypoint13 waypoint3)
	(cantraverse rover1 waypoint3 waypoint13)
	(cantraverse rover1 waypoint16 waypoint22)
	(cantraverse rover1 waypoint22 waypoint16)
	(cantraverse rover1 waypoint20 waypoint17)
	(cantraverse rover1 waypoint17 waypoint20)
	(cantraverse rover1 waypoint18 waypoint10)
	(cantraverse rover1 waypoint10 waypoint18)
	(cantraverse rover1 waypoint18 waypoint23)
	(cantraverse rover1 waypoint23 waypoint18)
	(cantraverse rover1 waypoint0 waypoint7)
	(cantraverse rover1 waypoint7 waypoint0)
	(at rover2 waypoint3)
	(available rover2)
	(storeof rover2store rover2)
	(empty rover2store)
	(equippedforrockanalysis rover2)
	(equippedforimaging rover2)
	(cantraverse rover2 waypoint3 waypoint1)
	(cantraverse rover2 waypoint1 waypoint3)
	(cantraverse rover2 waypoint3 waypoint13)
	(cantraverse rover2 waypoint13 waypoint3)
	(cantraverse rover2 waypoint3 waypoint18)
	(cantraverse rover2 waypoint18 waypoint3)
	(cantraverse rover2 waypoint3 waypoint20)
	(cantraverse rover2 waypoint20 waypoint3)
	(cantraverse rover2 waypoint1 waypoint2)
	(cantraverse rover2 waypoint2 waypoint1)
	(cantraverse rover2 waypoint1 waypoint5)
	(cantraverse rover2 waypoint5 waypoint1)
	(cantraverse rover2 waypoint1 waypoint14)
	(cantraverse rover2 waypoint14 waypoint1)
	(cantraverse rover2 waypoint1 waypoint15)
	(cantraverse rover2 waypoint15 waypoint1)
	(cantraverse rover2 waypoint13 waypoint4)
	(cantraverse rover2 waypoint4 waypoint13)
	(cantraverse rover2 waypoint13 waypoint21)
	(cantraverse rover2 waypoint21 waypoint13)
	(cantraverse rover2 waypoint18 waypoint6)
	(cantraverse rover2 waypoint6 waypoint18)
	(cantraverse rover2 waypoint18 waypoint9)
	(cantraverse rover2 waypoint9 waypoint18)
	(cantraverse rover2 waypoint18 waypoint17)
	(cantraverse rover2 waypoint17 waypoint18)
	(cantraverse rover2 waypoint18 waypoint23)
	(cantraverse rover2 waypoint23 waypoint18)
	(cantraverse rover2 waypoint18 waypoint24)
	(cantraverse rover2 waypoint24 waypoint18)
	(cantraverse rover2 waypoint20 waypoint16)
	(cantraverse rover2 waypoint16 waypoint20)
	(cantraverse rover2 waypoint20 waypoint19)
	(cantraverse rover2 waypoint19 waypoint20)
	(cantraverse rover2 waypoint5 waypoint0)
	(cantraverse rover2 waypoint0 waypoint5)
	(cantraverse rover2 waypoint5 waypoint8)
	(cantraverse rover2 waypoint8 waypoint5)
	(cantraverse rover2 waypoint14 waypoint12)
	(cantraverse rover2 waypoint12 waypoint14)
	(cantraverse rover2 waypoint15 waypoint10)
	(cantraverse rover2 waypoint10 waypoint15)
	(cantraverse rover2 waypoint4 waypoint7)
	(cantraverse rover2 waypoint7 waypoint4)
	(cantraverse rover2 waypoint21 waypoint11)
	(cantraverse rover2 waypoint11 waypoint21)
	(cantraverse rover2 waypoint21 waypoint22)
	(cantraverse rover2 waypoint22 waypoint21)
	(at rover3 waypoint3)
	(available rover3)
	(storeof rover3store rover3)
	(empty rover3store)
	(equippedforsoilanalysis rover3)
	(equippedforrockanalysis rover3)
	(cantraverse rover3 waypoint3 waypoint1)
	(cantraverse rover3 waypoint1 waypoint3)
	(cantraverse rover3 waypoint3 waypoint12)
	(cantraverse rover3 waypoint12 waypoint3)
	(cantraverse rover3 waypoint3 waypoint13)
	(cantraverse rover3 waypoint13 waypoint3)
	(cantraverse rover3 waypoint3 waypoint18)
	(cantraverse rover3 waypoint18 waypoint3)
	(cantraverse rover3 waypoint3 waypoint20)
	(cantraverse rover3 waypoint20 waypoint3)
	(cantraverse rover3 waypoint1 waypoint2)
	(cantraverse rover3 waypoint2 waypoint1)
	(cantraverse rover3 waypoint1 waypoint4)
	(cantraverse rover3 waypoint4 waypoint1)
	(cantraverse rover3 waypoint1 waypoint5)
	(cantraverse rover3 waypoint5 waypoint1)
	(cantraverse rover3 waypoint1 waypoint14)
	(cantraverse rover3 waypoint14 waypoint1)
	(cantraverse rover3 waypoint1 waypoint15)
	(cantraverse rover3 waypoint15 waypoint1)
	(cantraverse rover3 waypoint1 waypoint23)
	(cantraverse rover3 waypoint23 waypoint1)
	(cantraverse rover3 waypoint12 waypoint6)
	(cantraverse rover3 waypoint6 waypoint12)
	(cantraverse rover3 waypoint12 waypoint19)
	(cantraverse rover3 waypoint19 waypoint12)
	(cantraverse rover3 waypoint12 waypoint22)
	(cantraverse rover3 waypoint22 waypoint12)
	(cantraverse rover3 waypoint12 waypoint24)
	(cantraverse rover3 waypoint24 waypoint12)
	(cantraverse rover3 waypoint13 waypoint21)
	(cantraverse rover3 waypoint21 waypoint13)
	(cantraverse rover3 waypoint18 waypoint0)
	(cantraverse rover3 waypoint0 waypoint18)
	(cantraverse rover3 waypoint18 waypoint9)
	(cantraverse rover3 waypoint9 waypoint18)
	(cantraverse rover3 waypoint18 waypoint17)
	(cantraverse rover3 waypoint17 waypoint18)
	(cantraverse rover3 waypoint20 waypoint16)
	(cantraverse rover3 waypoint16 waypoint20)
	(cantraverse rover3 waypoint4 waypoint7)
	(cantraverse rover3 waypoint7 waypoint4)
	(cantraverse rover3 waypoint4 waypoint8)
	(cantraverse rover3 waypoint8 waypoint4)
	(cantraverse rover3 waypoint6 waypoint11)
	(cantraverse rover3 waypoint11 waypoint6)
	(cantraverse rover3 waypoint16 waypoint10)
	(cantraverse rover3 waypoint10 waypoint16)
	(at rover4 waypoint16)
	(available rover4)
	(storeof rover4store rover4)
	(empty rover4store)
	(equippedforrockanalysis rover4)
	(equippedforimaging rover4)
	(cantraverse rover4 waypoint16 waypoint2)
	(cantraverse rover4 waypoint2 waypoint16)
	(cantraverse rover4 waypoint16 waypoint4)
	(cantraverse rover4 waypoint4 waypoint16)
	(cantraverse rover4 waypoint16 waypoint5)
	(cantraverse rover4 waypoint5 waypoint16)
	(cantraverse rover4 waypoint16 waypoint7)
	(cantraverse rover4 waypoint7 waypoint16)
	(cantraverse rover4 waypoint16 waypoint8)
	(cantraverse rover4 waypoint8 waypoint16)
	(cantraverse rover4 waypoint16 waypoint10)
	(cantraverse rover4 waypoint10 waypoint16)
	(cantraverse rover4 waypoint16 waypoint15)
	(cantraverse rover4 waypoint15 waypoint16)
	(cantraverse rover4 waypoint16 waypoint22)
	(cantraverse rover4 waypoint22 waypoint16)
	(cantraverse rover4 waypoint2 waypoint9)
	(cantraverse rover4 waypoint9 waypoint2)
	(cantraverse rover4 waypoint2 waypoint14)
	(cantraverse rover4 waypoint14 waypoint2)
	(cantraverse rover4 waypoint4 waypoint1)
	(cantraverse rover4 waypoint1 waypoint4)
	(cantraverse rover4 waypoint4 waypoint13)
	(cantraverse rover4 waypoint13 waypoint4)
	(cantraverse rover4 waypoint4 waypoint20)
	(cantraverse rover4 waypoint20 waypoint4)
	(cantraverse rover4 waypoint5 waypoint0)
	(cantraverse rover4 waypoint0 waypoint5)
	(cantraverse rover4 waypoint5 waypoint21)
	(cantraverse rover4 waypoint21 waypoint5)
	(cantraverse rover4 waypoint5 waypoint24)
	(cantraverse rover4 waypoint24 waypoint5)
	(cantraverse rover4 waypoint7 waypoint17)
	(cantraverse rover4 waypoint17 waypoint7)
	(cantraverse rover4 waypoint8 waypoint11)
	(cantraverse rover4 waypoint11 waypoint8)
	(cantraverse rover4 waypoint8 waypoint18)
	(cantraverse rover4 waypoint18 waypoint8)
	(cantraverse rover4 waypoint15 waypoint3)
	(cantraverse rover4 waypoint3 waypoint15)
	(cantraverse rover4 waypoint15 waypoint6)
	(cantraverse rover4 waypoint6 waypoint15)
	(cantraverse rover4 waypoint15 waypoint12)
	(cantraverse rover4 waypoint12 waypoint15)
	(cantraverse rover4 waypoint20 waypoint23)
	(cantraverse rover4 waypoint23 waypoint20)
	(cantraverse rover4 waypoint21 waypoint19)
	(cantraverse rover4 waypoint19 waypoint21)
	(at rover5 waypoint10)
	(available rover5)
	(storeof rover5store rover5)
	(empty rover5store)
	(equippedforimaging rover5)
	(cantraverse rover5 waypoint10 waypoint11)
	(cantraverse rover5 waypoint11 waypoint10)
	(cantraverse rover5 waypoint10 waypoint15)
	(cantraverse rover5 waypoint15 waypoint10)
	(cantraverse rover5 waypoint10 waypoint16)
	(cantraverse rover5 waypoint16 waypoint10)
	(cantraverse rover5 waypoint10 waypoint18)
	(cantraverse rover5 waypoint18 waypoint10)
	(cantraverse rover5 waypoint10 waypoint23)
	(cantraverse rover5 waypoint23 waypoint10)
	(cantraverse rover5 waypoint11 waypoint6)
	(cantraverse rover5 waypoint6 waypoint11)
	(cantraverse rover5 waypoint11 waypoint8)
	(cantraverse rover5 waypoint8 waypoint11)
	(cantraverse rover5 waypoint11 waypoint12)
	(cantraverse rover5 waypoint12 waypoint11)
	(cantraverse rover5 waypoint11 waypoint21)
	(cantraverse rover5 waypoint21 waypoint11)
	(cantraverse rover5 waypoint11 waypoint22)
	(cantraverse rover5 waypoint22 waypoint11)
	(cantraverse rover5 waypoint15 waypoint0)
	(cantraverse rover5 waypoint0 waypoint15)
	(cantraverse rover5 waypoint15 waypoint1)
	(cantraverse rover5 waypoint1 waypoint15)
	(cantraverse rover5 waypoint15 waypoint13)
	(cantraverse rover5 waypoint13 waypoint15)
	(cantraverse rover5 waypoint15 waypoint17)
	(cantraverse rover5 waypoint17 waypoint15)
	(cantraverse rover5 waypoint16 waypoint2)
	(cantraverse rover5 waypoint2 waypoint16)
	(cantraverse rover5 waypoint16 waypoint4)
	(cantraverse rover5 waypoint4 waypoint16)
	(cantraverse rover5 waypoint16 waypoint7)
	(cantraverse rover5 waypoint7 waypoint16)
	(cantraverse rover5 waypoint18 waypoint3)
	(cantraverse rover5 waypoint3 waypoint18)
	(cantraverse rover5 waypoint23 waypoint20)
	(cantraverse rover5 waypoint20 waypoint23)
	(cantraverse rover5 waypoint23 waypoint24)
	(cantraverse rover5 waypoint24 waypoint23)
	(cantraverse rover5 waypoint6 waypoint5)
	(cantraverse rover5 waypoint5 waypoint6)
	(cantraverse rover5 waypoint6 waypoint9)
	(cantraverse rover5 waypoint9 waypoint6)
	(cantraverse rover5 waypoint6 waypoint14)
	(cantraverse rover5 waypoint14 waypoint6)
	(cantraverse rover5 waypoint6 waypoint19)
	(cantraverse rover5 waypoint19 waypoint6)
	(at rover6 waypoint4)
	(available rover6)
	(storeof rover6store rover6)
	(empty rover6store)
	(equippedforsoilanalysis rover6)
	(equippedforimaging rover6)
	(cantraverse rover6 waypoint4 waypoint1)
	(cantraverse rover6 waypoint1 waypoint4)
	(cantraverse rover6 waypoint4 waypoint6)
	(cantraverse rover6 waypoint6 waypoint4)
	(cantraverse rover6 waypoint4 waypoint8)
	(cantraverse rover6 waypoint8 waypoint4)
	(cantraverse rover6 waypoint4 waypoint13)
	(cantraverse rover6 waypoint13 waypoint4)
	(cantraverse rover6 waypoint4 waypoint16)
	(cantraverse rover6 waypoint16 waypoint4)
	(cantraverse rover6 waypoint4 waypoint19)
	(cantraverse rover6 waypoint19 waypoint4)
	(cantraverse rover6 waypoint4 waypoint20)
	(cantraverse rover6 waypoint20 waypoint4)
	(cantraverse rover6 waypoint1 waypoint3)
	(cantraverse rover6 waypoint3 waypoint1)
	(cantraverse rover6 waypoint1 waypoint5)
	(cantraverse rover6 waypoint5 waypoint1)
	(cantraverse rover6 waypoint1 waypoint14)
	(cantraverse rover6 waypoint14 waypoint1)
	(cantraverse rover6 waypoint1 waypoint18)
	(cantraverse rover6 waypoint18 waypoint1)
	(cantraverse rover6 waypoint1 waypoint23)
	(cantraverse rover6 waypoint23 waypoint1)
	(cantraverse rover6 waypoint6 waypoint2)
	(cantraverse rover6 waypoint2 waypoint6)
	(cantraverse rover6 waypoint6 waypoint9)
	(cantraverse rover6 waypoint9 waypoint6)
	(cantraverse rover6 waypoint6 waypoint11)
	(cantraverse rover6 waypoint11 waypoint6)
	(cantraverse rover6 waypoint6 waypoint12)
	(cantraverse rover6 waypoint12 waypoint6)
	(cantraverse rover6 waypoint6 waypoint15)
	(cantraverse rover6 waypoint15 waypoint6)
	(cantraverse rover6 waypoint6 waypoint21)
	(cantraverse rover6 waypoint21 waypoint6)
	(cantraverse rover6 waypoint8 waypoint17)
	(cantraverse rover6 waypoint17 waypoint8)
	(cantraverse rover6 waypoint16 waypoint7)
	(cantraverse rover6 waypoint7 waypoint16)
	(cantraverse rover6 waypoint16 waypoint10)
	(cantraverse rover6 waypoint10 waypoint16)
	(cantraverse rover6 waypoint16 waypoint22)
	(cantraverse rover6 waypoint22 waypoint16)
	(cantraverse rover6 waypoint20 waypoint24)
	(cantraverse rover6 waypoint24 waypoint20)
	(cantraverse rover6 waypoint23 waypoint0)
	(cantraverse rover6 waypoint0 waypoint23)
	(at rover7 waypoint16)
	(available rover7)
	(storeof rover7store rover7)
	(empty rover7store)
	(equippedforrockanalysis rover7)
	(cantraverse rover7 waypoint16 waypoint2)
	(cantraverse rover7 waypoint2 waypoint16)
	(cantraverse rover7 waypoint16 waypoint4)
	(cantraverse rover7 waypoint4 waypoint16)
	(cantraverse rover7 waypoint16 waypoint8)
	(cantraverse rover7 waypoint8 waypoint16)
	(cantraverse rover7 waypoint16 waypoint10)
	(cantraverse rover7 waypoint10 waypoint16)
	(cantraverse rover7 waypoint16 waypoint20)
	(cantraverse rover7 waypoint20 waypoint16)
	(cantraverse rover7 waypoint2 waypoint5)
	(cantraverse rover7 waypoint5 waypoint2)
	(cantraverse rover7 waypoint2 waypoint6)
	(cantraverse rover7 waypoint6 waypoint2)
	(cantraverse rover7 waypoint2 waypoint9)
	(cantraverse rover7 waypoint9 waypoint2)
	(cantraverse rover7 waypoint2 waypoint14)
	(cantraverse rover7 waypoint14 waypoint2)
	(cantraverse rover7 waypoint2 waypoint23)
	(cantraverse rover7 waypoint23 waypoint2)
	(cantraverse rover7 waypoint4 waypoint13)
	(cantraverse rover7 waypoint13 waypoint4)
	(cantraverse rover7 waypoint4 waypoint19)
	(cantraverse rover7 waypoint19 waypoint4)
	(cantraverse rover7 waypoint8 waypoint7)
	(cantraverse rover7 waypoint7 waypoint8)
	(cantraverse rover7 waypoint8 waypoint17)
	(cantraverse rover7 waypoint17 waypoint8)
	(cantraverse rover7 waypoint8 waypoint18)
	(cantraverse rover7 waypoint18 waypoint8)
	(cantraverse rover7 waypoint10 waypoint11)
	(cantraverse rover7 waypoint11 waypoint10)
	(cantraverse rover7 waypoint10 waypoint15)
	(cantraverse rover7 waypoint15 waypoint10)
	(cantraverse rover7 waypoint20 waypoint3)
	(cantraverse rover7 waypoint3 waypoint20)
	(cantraverse rover7 waypoint20 waypoint24)
	(cantraverse rover7 waypoint24 waypoint20)
	(cantraverse rover7 waypoint5 waypoint21)
	(cantraverse rover7 waypoint21 waypoint5)
	(cantraverse rover7 waypoint6 waypoint12)
	(cantraverse rover7 waypoint12 waypoint6)
	(cantraverse rover7 waypoint14 waypoint0)
	(cantraverse rover7 waypoint0 waypoint14)
	(cantraverse rover7 waypoint14 waypoint1)
	(cantraverse rover7 waypoint1 waypoint14)
	(onboard camera0 rover0)
	(calibrationtarget camera0 objective6)
	(supports camera0 colour)
	(supports camera0 high_res)
	(onboard camera1 rover1)
	(calibrationtarget camera1 objective1)
	(supports camera1 colour)
	(supports camera1 high_res)
	(onboard camera2 rover4)
	(calibrationtarget camera2 objective0)
	(supports camera2 colour)
	(supports camera2 high_res)
	(supports camera2 low_res)
	(onboard camera3 rover2)
	(calibrationtarget camera3 objective2)
	(supports camera3 high_res)
	(supports camera3 low_res)
	(onboard camera4 rover1)
	(calibrationtarget camera4 objective4)
	(supports camera4 colour)
	(supports camera4 high_res)
	(onboard camera5 rover5)
	(calibrationtarget camera5 objective4)
	(supports camera5 high_res)
	(onboard camera6 rover6)
	(calibrationtarget camera6 objective5)
	(supports camera6 colour)
	(supports camera6 high_res)
	(supports camera6 low_res)
	(visiblefrom objective0 waypoint0)
	(visiblefrom objective0 waypoint1)
	(visiblefrom objective0 waypoint2)
	(visiblefrom objective0 waypoint3)
	(visiblefrom objective0 waypoint4)
	(visiblefrom objective0 waypoint5)
	(visiblefrom objective0 waypoint6)
	(visiblefrom objective0 waypoint7)
	(visiblefrom objective0 waypoint8)
	(visiblefrom objective0 waypoint9)
	(visiblefrom objective0 waypoint10)
	(visiblefrom objective0 waypoint11)
	(visiblefrom objective0 waypoint12)
	(visiblefrom objective0 waypoint13)
	(visiblefrom objective0 waypoint14)
	(visiblefrom objective0 waypoint15)
	(visiblefrom objective0 waypoint16)
	(visiblefrom objective1 waypoint0)
	(visiblefrom objective1 waypoint1)
	(visiblefrom objective1 waypoint2)
	(visiblefrom objective1 waypoint3)
	(visiblefrom objective2 waypoint0)
	(visiblefrom objective2 waypoint1)
	(visiblefrom objective2 waypoint2)
	(visiblefrom objective2 waypoint3)
	(visiblefrom objective2 waypoint4)
	(visiblefrom objective2 waypoint5)
	(visiblefrom objective2 waypoint6)
	(visiblefrom objective2 waypoint7)
	(visiblefrom objective2 waypoint8)
	(visiblefrom objective2 waypoint9)
	(visiblefrom objective2 waypoint10)
	(visiblefrom objective2 waypoint11)
	(visiblefrom objective2 waypoint12)
	(visiblefrom objective2 waypoint13)
	(visiblefrom objective2 waypoint14)
	(visiblefrom objective2 waypoint15)
	(visiblefrom objective2 waypoint16)
	(visiblefrom objective2 waypoint17)
	(visiblefrom objective3 waypoint0)
	(visiblefrom objective3 waypoint1)
	(visiblefrom objective3 waypoint2)
	(visiblefrom objective3 waypoint3)
	(visiblefrom objective3 waypoint4)
	(visiblefrom objective3 waypoint5)
	(visiblefrom objective3 waypoint6)
	(visiblefrom objective3 waypoint7)
	(visiblefrom objective3 waypoint8)
	(visiblefrom objective3 waypoint9)
	(visiblefrom objective3 waypoint10)
	(visiblefrom objective3 waypoint11)
	(visiblefrom objective3 waypoint12)
	(visiblefrom objective3 waypoint13)
	(visiblefrom objective3 waypoint14)
	(visiblefrom objective3 waypoint15)
	(visiblefrom objective3 waypoint16)
	(visiblefrom objective3 waypoint17)
	(visiblefrom objective3 waypoint18)
	(visiblefrom objective3 waypoint19)
	(visiblefrom objective4 waypoint0)
	(visiblefrom objective4 waypoint1)
	(visiblefrom objective4 waypoint2)
	(visiblefrom objective4 waypoint3)
	(visiblefrom objective4 waypoint4)
	(visiblefrom objective4 waypoint5)
	(visiblefrom objective4 waypoint6)
	(visiblefrom objective4 waypoint7)
	(visiblefrom objective4 waypoint8)
	(visiblefrom objective4 waypoint9)
	(visiblefrom objective4 waypoint10)
	(visiblefrom objective4 waypoint11)
	(visiblefrom objective4 waypoint12)
	(visiblefrom objective4 waypoint13)
	(visiblefrom objective4 waypoint14)
	(visiblefrom objective4 waypoint15)
	(visiblefrom objective4 waypoint16)
	(visiblefrom objective4 waypoint17)
	(visiblefrom objective4 waypoint18)
	(visiblefrom objective4 waypoint19)
	(visiblefrom objective4 waypoint20)
	(visiblefrom objective4 waypoint21)
	(visiblefrom objective4 waypoint22)
	(visiblefrom objective4 waypoint23)
	(visiblefrom objective5 waypoint0)
	(visiblefrom objective5 waypoint1)
	(visiblefrom objective5 waypoint2)
	(visiblefrom objective5 waypoint3)
	(visiblefrom objective5 waypoint4)
	(visiblefrom objective5 waypoint5)
	(visiblefrom objective5 waypoint6)
	(visiblefrom objective5 waypoint7)
	(visiblefrom objective5 waypoint8)
	(visiblefrom objective5 waypoint9)
	(visiblefrom objective5 waypoint10)
	(visiblefrom objective5 waypoint11)
	(visiblefrom objective5 waypoint12)
	(visiblefrom objective5 waypoint13)
	(visiblefrom objective5 waypoint14)
	(visiblefrom objective6 waypoint0)
	(visiblefrom objective6 waypoint1)
	(visiblefrom objective6 waypoint2)
	(visiblefrom objective6 waypoint3)
	(visiblefrom objective6 waypoint4)
	(visiblefrom objective6 waypoint5)
	(visiblefrom objective6 waypoint6)
	(visiblefrom objective6 waypoint7)
	(visiblefrom objective6 waypoint8)
	(visiblefrom objective6 waypoint9)
	(visiblefrom objective6 waypoint10)
	(visiblefrom objective7 waypoint0)
	(visiblefrom objective7 waypoint1)
	(visiblefrom objective7 waypoint2)
	(visiblefrom objective7 waypoint3)
	(visiblefrom objective7 waypoint4)
	(visiblefrom objective7 waypoint5)
	(visiblefrom objective7 waypoint6)
	(visiblefrom objective7 waypoint7)
	(visiblefrom objective7 waypoint8)
	(visiblefrom objective7 waypoint9)
	(visiblefrom objective7 waypoint10)
	(visiblefrom objective7 waypoint11)
	(visiblefrom objective7 waypoint12)
	(visiblefrom objective7 waypoint13)
	(visiblefrom objective7 waypoint14)
	(visiblefrom objective7 waypoint15)
	(visiblefrom objective7 waypoint16)
	(visiblefrom objective7 waypoint17)
	(visiblefrom objective7 waypoint18)
	(visiblefrom objective7 waypoint19)
	(visiblefrom objective7 waypoint20)
)

(:goal (and
(communicatedsoildata waypoint8)
(communicatedsoildata waypoint23)
(communicatedsoildata waypoint7)
(communicatedsoildata waypoint11)
(communicatedsoildata waypoint13)
(communicatedsoildata waypoint20)
(communicatedrockdata waypoint7)
(communicatedrockdata waypoint14)
(communicatedrockdata waypoint22)
(communicatedrockdata waypoint16)
(communicatedrockdata waypoint12)
(communicatedrockdata waypoint10)
(communicatedrockdata waypoint9)
(communicatedrockdata waypoint21)
(communicatedrockdata waypoint18)
(communicatedimagedata objective2 high_res)
(communicatedimagedata objective0 high_res)
(communicatedimagedata objective3 colour)
(communicatedimagedata objective7 colour)
(communicatedimagedata objective5 high_res)
	)
)
)
