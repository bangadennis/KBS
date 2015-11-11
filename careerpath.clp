;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Career Path -KBS Group Project                     
;An Expert System to help a prospective or an on-going student know his/her
;carrer path based on his/her interests and specializations.
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;Student's template

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
    (printout t "-management" crlf)
    (printout t "-networking-(e.g routing)" crlf)
    (printout t "-security" crlf)
    (printout t "-machine-learning" crlf)
    (printout t "-documenting" crlf)
    (printout t "-security" crlf)
    (printout t "-healthcare" crlf)
    (printout t "-security" crlf)
    (printout t "*****************************" crlf)
    
    (bind ?read yes)             
     (while (eq ?read yes)
        (printout t "Interest:" crlf)
          (bind ?interest (read))
          (assert(interest ?interest))
          (printout t "add-- yes or no" crlf)
          (bind ?read (read)) 
     )
    
    (printout t "What specializations/certificates  you have -" ?name "?" crlf)
    (printout t "Choose from this list:" crlf)
    (printout t "*****************************" crlf)
    (printout t "-Networking-CCNP,CCNA, CCIE,WCNA,JNCIE-ENT, CompTIA-Network+" crlf)
    (printout t "-Project Management-CAPM,PgMP, PMP, " crlf)
    (printout t "-Auditing-CISA, GSNA" crlf)
    (printout t "-Security- CISM, CommpTIA Security+, CCFP, CISSP,SSCP,CAP,CEH, " crlf)
    (printout t "-management" crlf)
    (printout t "-security" crlf)
    (printout t "-machine-learning" crlf)
    (printout t "-documenting" crlf)
    (printout t "-security" crlf)
    (printout t "-healthcare" crlf)
    (printout t "-security" crlf)
    (printout t "-databases" crlf)
    (printout t "*****************************" crlf)
    
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

(defrule career_1 "rule 1"
    (interest analytics)
    (specialization data)
=>
    (printout t "Data " crlf)
)

(defrule career_2 "rule 1"
    (interest networking)
    (specialization ccna|subnetting)
=>
    (printout t "Networks" crlf)
)

(defrule career_3 "rule 1"
    (interest system)
    (specialization system)
=>
    (printout t "Systems Administrator" crlf)
)

(defrule career_4 "rule 1"
    (interest security)
    (specialization CISM | CommpTIA Security+ | CCFP | CISSP |SSCP | CAP | CEH)
=>
    (printout t "Security" crlf)
)

(defrule career_5 "rule 1"
    (interest security)
    (interest networking)
    (interest analytics)
    (specialization CISM | CommpTIA Security+ | CCFP | CISSP |SSCP | CAP | CEH)
    (specialization ccna|subnetting)
=>
    (printout t "Natwork Security Analyst" crlf)
)

(defrule career_6 "rule 1"
    (interest system)
    (interest analytics)
    (specialization system)
=>
    (printout t "Systems Analyst" crlf)
)

(defrule career_7 "rule 1"
    (interest system)
    (interest auditing)
    (specialization system | CISA | GSNA)
=>
    (printout t "Systems Auditor" crlf)
)

(defrule career_8 "rule 1"
    (interest analytics)
    (specialization databases)
=>
    (printout t "Database Administrator" crlf)
)

(defrule career_9 "rule 1"
    (interest management)
    (specialization CAPM | PgMP | PMP)
=>
    (printout t "Software Project Management" crlf)
)

(defrule career_10 "rule 1"
    (interest design)
    (interest web)
=>
    (printout t "Web Designer" crlf)
)




