;------------------------------------------------------------------
;  This is a ClIPS program to identify different fruits.
;   (mango, banana, watermelon, orange, lemon)
;   Author: Dennis Banga
;   Date: 30-9-2015
;   
;------------------------------------------------------------------

(deftemplate fruit 
    "A fruit Details Template"
    (slot taste)
    (slot color)
    (slot shape)
    (slot seed-size)
    (slot size)
    (slot smell)
)

;fruit temporary
;(deffacts temp 
;    (fruit (color orange)
;            (shape round)
;            (seed-size small)
;           (taste sweet)
;   )
;)

;MENU interface
;Intialize
(defrule init 
    (initial-fact)
=>  
     (printout t "Enter the Facts of the Fruit:" crlf)
     (printout t "Shape- Either (round/spherical, curved/cresent, oval/geiod-spheroid)", crlf)
     (bind ?shape (read))
     (assert(fruit (shape ?shape)))

     (printout t "Taste- Either (sweet, bitter/sour)-" crlf)
     (bind ?taste (read))
     (assert(fruit (taste ?taste)))

     (printout t "Color- Either (yellow, orange, green)-" crlf)
     (bind ?color (read))
     (assert(fruit (color ?color)))

     (printout t "Seed Size- Either (small,large, none)-" crlf)
     (bind ?seed_size (read))
     (assert(fruit (seed-size ?seed_size)))
)

;Rule to identify an Orange
(defrule fruit_rule_1 
    (fruit (color orange)) 
    (fruit (shape round|spherical)) 
    (fruit (taste sweet)) 
    (fruit (seed-size small))
=>
    (printout t "The fruit is an Orange" crlf)

)

;Rule to identify a Lemon
(defrule fruit_rule_2 
    (fruit (color orange|green)) 
    (fruit (shape round|spherical)) 
    (fruit (taste bitter|sour)) 
    (fruit (seed-size small))
=>
    (printout t "The fruit is a Lemon" crlf)
    
)

;Rule to identify a Banana
(defrule fruit_rule_3 
    (fruit (color yellow|green)) 
    (fruit (shape curved|cresent)) 
    (fruit (taste sweet)) 
    (fruit (seed-size none))
=>
    (printout t "The fruit is a banana" crlf)
    
)

;Rule to identify a Water Melon
(defrule fruit_rule_4 
    (fruit (color green)) 
    (fruit (shape oval|geiod-spheriod)) 
    (fruit (taste sweet)) 
    (fruit (seed-size small))
=>
    (printout t "The fruit is a Water Melon" crlf)
    
)

(defrule fruit_rule_5 
    (fruit (color yellow)) 
    (fruit (shape oval|geiod-spheriod|spherical|round)) 
    (fruit (taste sweet)) 
    (fruit (seed-size large))
=>
    (printout t "The fruit is an Mango", crlf)

)

(defrule rule_fail
    ?color <- (fruit(color ?))
    ?shape <- (fruit(shape ?))
    ?taste <- (fruit(taste ?))
    ?seed-size <-(fruit(seed-size ?))
=>
   (retract ?color)
   (retract ?shape)
   (retract ?taste)
   (retract ?seed-size)
   (assert(rule-fail))
   (printout t "Invalid Facts of the fruit", crlf)
)
