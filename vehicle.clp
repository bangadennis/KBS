;------------------------------------------------------------------
;  This is a ClIPS program to identify different vehicle types.
;   (saloon-car, pick-up, van, bus, truck)
;   Author: Dennis Banga
;   Date: 30-9-2015
;   
;------------------------------------------------------------------

(deftemplate vehicle 
    "A Vehicle Facts Template"
    (slot size)
    (slot number_seats)
    (slot cargo_back)
    (slot number_wheels)
)

;Vehicle temporary
;(deffacts temp 
;    (vehicle (cargo_back orange)
;            (size large)
;            (number_seats 4)
;           (number_wheels 5)
;   )
;)

;Intialize
(defrule init 
    (initial-fact)
=>  
     (printout t "Enter the Facts of the Vehicle:" crlf)
     (printout t "Size- Either (small, medium, large)", crlf)
     (bind ?size (read))
     (assert(vehicle (size ?size)))

     (printout t "Number of Wheels-" crlf)
     (bind ?wheels (read))
     (assert(vehicle (number_wheels ?wheels)))

    (printout t "Number of Seats-" crlf)
     (bind ?seats (read))
     (assert(vehicle (number_seats ?seats)))

     (printout t "Cargo Back Either-(none, open, closed)" crlf)
     (bind ?cargo_back (read))
     (assert(fruit (cargo_back ?cargo_back)))
)

(defrule vehicle_rule_1 
    (vehicle (size small|medium)) 
    ?test_seats<-(vehicle (number_seats ?seats))
    (test (<= ?seats 5))
    ?test_wheels<-(vehicle (number_seats ?wheels))
    (test (= ?wheels 4))
    (vehicle (cargo_back none)) 
    
=>
    (printout t "The Vehicle  is a Saloon Car" crlf)

)

(defrule vehicle_rule_2 
    (vehicle (size small|medium)) 
    ?test_seats<-(vehicle (number_seats ?seats))
    (test (= ?seats 3))
    ?test_wheels<-(vehicle (number_seats ?wheels))
    (test (= ?wheels 4))
    (vehicle (cargo_back open)) 
    
=>
    (printout t "The Vehicle  is a Pick Up" crlf)

)

(defrule vehicle_rule_3 
    (vehicle (size small|medium)) 
    ?test_seats<-(vehicle (number_seats ?seats))
    (test (= ?seats 3))
    ?test_wheels<-(vehicle (number_seats ?wheels))
    (test (= ?wheels 4))
    (vehicle (cargo_back closed)) 
    
=>
    (printout t "The Vehicle  is a Van" crlf)

)

(defrule vehicle_rule_4 
    (vehicle (size medium|large)) 
    ?test_seats<-(vehicle (number_seats ?seats))
    (test (<= ?seats 5))
    ?test_wheels<-(vehicle (number_seats ?wheels))
    (test (>= ?wheels 6))
    (vehicle (cargo_back open|closed)) 
    
=>
    (printout t "The Vehicle  is a Truck" crlf)

)

(defrule vehicle_rule_5 
    (vehicle (size medium|large)) 
    ?test_seats<-(vehicle (number_seats ?seats))
    (test (<= ?seats 5))
    ?test_wheels<-(vehicle (number_seats ?wheels))
    (test (>= ?wheels 6))
    (vehicle (cargo_back open|closed)) 
    
=>
    (printout t "The Vehicle  is a Truck" crlf)

)
(defrule rule_fail
    ?cargo_back <- (vehicle(cargo_back ?))
    ?number_wheels <- (vehicle(number_wheels ?))
    ?number_seats <- (vehicle(number_seats ?))
    ?size <-(vehicle(size ?))
=>
   (retract ?cargo_back)
   (retract ?number_wheels)
   (retract ?number_seats)
   (retract ?size)
   (assert(rule-fail))
   (printout t "Invalid Facts of the Vehicle" crlf)
)
