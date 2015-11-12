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
    (printout t "-computer-systems" crlf)
     (printout t "-auditing" crlf)
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
    (printout t "-operating-system-administration" crlf)


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
    ;(printout t "Systems" crlf)
    (assert (first_level system))
)


(defrule career_4 "Security"
    (or (interest security)
    (specialization CISM | CommpTIA-Security+ | CCFP | CISSP |SSCP | CAP | CEH))
=>
    ;(printout t "Security" crlf)
    (assert (first_level security))
)


(defrule career_5 "Management"
    (or (interest management)
    (specialization CAPM|PgMP|PMP))
=>
    ;(printout t "Management" crlf)
    (assert (first_level management))
)


(defrule career_6 "Design"
    (or (interest design)
    (specialization computer-graphics)
    (specialization human-computer-interaction))
=>
    ;(printout t "Design" crlf)
    (assert (first_level design))
)

(defrule career_7 "Network Security Analyst"
    (and (first_level security)
    (first_level network)
    (interest analytics))
=>
    (printout t "Network Security Analyst" crlf)
)


(defrule career_8 "System Analyst"
    (or (interest security)
    (interest analytics)
    (first_level system))
=>
    (printout t "Systems Analyst" crlf)
)

(defrule career_9 "System Auditor"
    (or (first_level system)
    (interest auditing)
    (specialization CISA | GSNA))
=>
    (printout t "Systems Auditor" crlf)
)

(defrule career_10 "Database Administrator"
    (interest analytics)
    (specialization databases)
=>
    (printout t "Database Administrator" crlf)
)


(defrule career_12 "software project Manager"
    (first_level management)
=>
    (printout t "Software Project Manager" crlf)
)

(defrule career_13 "Web Designer"
    (and (first_level design))
    (interest web)
=>
    (printout t "Web Designer" crlf)
)

(defrule career_14 "cloud architect"
    (first_level management)
=>
    (printout t "Software Project Manager" crlf)
)

(defrule career_17 "Cloud Computing"
    (or(specialization cloud-computing))
=>
    ;(printout t "Management" crlf)
    (assert (first_level cloud-computing))
)

(defrule career_18 "cloud architect"
    (first_level cloud-computing)
    (specialization shell|VBScript|Perl|Python|Linux|Windows)
=>
    (printout t "Cloud Architect" crlf)
)

(defrule career_19 "Cloud software engineer"
    (first_level cloud-computing)
    (first_level software-engineer)
    (specialization ETL)
=>
    (printout t "Cloud software engineer" crlf)
)

(defrule career_23 "Cloud software engineer"
    (first_level cloud-computing)
    (specialization shell|VBScript|Perl|Python|Linux|Windows)
=>
    (printout t "Cloud Architect" crlf)
)

(defrule career_24 "Cloud network engineer"
    (first_level cloud-computing)
    (first_level network)
=>
    (printout t "Cloud network engineer" crlf)
)



;Cloud architect
;Cloud software engineer
;Cloud engineer
;Cloud services developer
;Cloud systems administrator
;Cloud consultant
;Cloud systems engineer
;Cloud network engineer
;Cloud product manager



