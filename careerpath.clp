;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Career Path -KBS Group Project                     
;An Expert System to help a prospective or an on-going student know his/her
;carrer path based on his/her interests and specializations.
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;Student's template
(name ?name)
(deftemplate student "student personal details"
    (slot name)
    (multislot career)
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
    (printout t "Choose from this list:" crlf)
    (printout t "*****************************" crlf)
    (printout t "-security" crlf)
    (printout t "-analytics" crlf)
    (printout t "-design" crlf)
    (printout t "-web" crlf)
    (printout t "-programming" crlf)
    (printout t "-mobile" crlf)
    (printout t "-management" crlf)
    (printout t "-networking" crlf)
    (printout t "-security" crlf)
    (printout t "-machine-learning" crlf)
    (printout t "-documenting" crlf)
    (printout t "-cyrptography" crlf)
    (printout t "-healthcare" crlf)
    (printout t "-security" crlf)
    (printout t "-games" crlf)
    (printout t "-marketing" crlf)
    (printout t "-social-media" crlf)
    (printout t "-computer-systems")
    (printout t "*****************************" crlf)
    
    (bind ?read yes)             
     (while (eq ?read yes)
        (printout t "Interest:" crlf)
          (bind ?interest (read))
          (assert(interest ?interest))
          (printout t "Continue adding interests?-yes or no" crlf)
          (bind ?read (read)) 
     )
    
    (printout t "What specializations/certificates  you have -" ?name "?" crlf)
    (printout t "Choose from this list:" crlf)
    (printout t "*****************************" crlf)
    (printout t "-networking-CCNP,CCNA, CCIE,WCNA,JNCIE-ENT, CompTIA-Network+" crlf)
    (printout t "-project-management-CAPM,PgMP, PMP" crlf)
    (printout t "-auditing-CISA, GSNA" crlf)
    (printout t "-security- CISM, CommpTIA Security+, CCFP, CISSP,SSCP,CAP,CEH, " crlf)
    (printout t "-data-science" crlf)
    (printout t "-interaction-design" crlf)
    (printout t "-cloud-computing" crlf)
    (printout t "-human-computer-interaction" crlf)
    (printout t "-computer-graphics" crlf)
    (printout t "-operating-system-administation" crlf)


    (printout t "*****************************" crlf)
    
    (bind ?read yes)             
     (while (eq ?read yes)
          (printout t "Specialization:" crlf)
          (bind ?specialization (read))
          (assert(specialization ?specialization))
          (printout t "Continue adding specializations?-yes or no" crlf)
          (bind ?read (read)) 
     )
)

;Rules first level

(defrule career_1 "Data Career Path"
   (or (interest analytics|machine-learning)
    (specialization data))
=>
    ;(printout t "Data " crlf)
    (assert (first_level data))
)


(defrule career_2 "Network"
    (or (interest networking)
    (specialization CCNP|CCNA|CCIE|WCNA|JNCIE-ENT|CompTIA-Network+))
=>
    ;(printout t "Networks" crlf)
    (assert (first_level network))
)


(defrule career_3 "Systems"
    (or (interest computer-systems|networking)
    (specialization operating-system-administration))
=>
    (printout t "Systems" crlf)
    (assert (first_level system))
)


(defrule career_4 "Security"
    (or (interest security)
    (specialization CISM | CommpTIA Security+ | CCFP | CISSP |SSCP | CAP | CEH))
=>
    (printout t "Security" crlf)
    (assert (first_level security))
)


(defrule career_5 "Management"
    (or (interest management)
    (specialization CAPM|PgMP|PMP))
=>
    (printout t "Management" crlf)
    (assert (first_level management))
)


(defrule career_6 "Design"
    (interest security)
    (specialization CISM | CommpTIA Security+ | CCFP | CISSP |SSCP | CAP | CEH)
=>
    (printout t "Design" crlf)
    (assert (first_level design))
)

(defrule career_7 "Network Security Analyst"
    (and (first_level security)
    (first_level network)
    (interest analytics))
=>
    (printout t "Natwork Security Analyst" crlf)
)



(defrule career_8 "rule 1"
    (interest system)
    (interest analytics)
    (first_level system)
=>
    (printout t "Systems Analyst" crlf)
)

(defrule career_9 "rule 1"
    (interest system)
    (interest auditing)
    (specialization system | CISA | GSNA)
=>
    (printout t "Systems Auditor" crlf)
)

(defrule career_10 "rule 1"
    (interest analytics)
    (specialization databases)
=>
    (printout t "Database Administrator" crlf)
)

(defrule career_12 "rule 1"
    (interest management)
    (specialization CAPM | PgMP | PMP)
=>
    (printout t "Software Project Management" crlf)
)

(defrule career_13 "rule 1"
    (interest design)
    (interest web)
=>
    (printout t "Web Designer" crlf)
)




