;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Career Path -KBS Group Project                     
;An Expert System to help a prospective or an on-going student know his/her
;carrer path based on his/her interests and specializations.
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;Student's template

(deftemplate student "student personal details"
    (slot name)
    (multislot carrer)
)

;Intialize
(defrule init "menu"
    (initial-fact)
    =>
    (printout t "Welcome to Career Path-Predictor" crlf)
    (printout t "What's your Name?-" crlf)
    (bind ?name (readline))
    (assert (student (name ?name)))

    (printout t "What are your interests-" ?name "?" crlf)
    (bind ?read yes)             
     (while (eq ?read yes)
        (printout t "Interest:" crlf)
          (bind ?interest (read))
          (assert(interest ?interest))
          (printout t "add-- yes or no" crlf)
          (bind ?read (read)) 
     )
    
    (printout t "What specializations do you have-" ?name "?" crlf)
    (bind ?read yes)             
     (while (eq ?read yes)
          (printout t "Specialization:" crlf)
          (bind ?specialization (read))
          (assert(specialization ?specialization))
          (printout t "Add- yes or no" crlf)
          (bind ?read (read)) 
     )
)

;Rules

(defrule carrer_1 "rule 1"
    (interest analytics)
    (specialization data)
=>
    (printout t "Data " crlf)
)

(defrule carrer_2 "rule 1"
    (interest networking)
    (specialization ccna|subnetting)
=>
    (printout t "Networks" crlf)
)

(defrule carrer_3 "rule 1"
    (interest system)
    (specialization system)
=>
    (printout t "Systems" crlf)
)





