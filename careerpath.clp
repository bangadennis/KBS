;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Career Path -KBS Group Project                     
;An Expert System to help a prospective or an on-going student know his/her
;carrer path based on his/her interests and specializations.
; Members
; Daphne Moraa
; Dennis Banga
; Wachira Mureithi
; Felix Ongati
; Willies Omwomomo
; Kennedy Sitati
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
    (printout t "-mobile|android|ios|windows" crlf)
    (printout t "-management" crlf)
    (printout t "-networking" crlf)
    (printout t "-security" crlf)
    (printout t "-machine-learning" crlf)
    (printout t "-documenting" crlf)
    (printout t "-cryptography" crlf)
    (printout t "-healthcare" crlf)
    (printout t "-security" crlf)
    (printout t "-games" crlf)
    (printout t "-marketing" crlf)
    (printout t "-social-media" crlf)
    (printout t "-computer-systems" crlf)
    (printout t "-auditing" crlf)
    (printout t "-databases" crlf)
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
    (printout t "-security- CISM, CompTIA-Security+, CCFP, CISSP,SSCP,CAP,CEH, " crlf)
    (printout t "-data-science" crlf)
    (printout t "-interaction-design" crlf)
    (printout t "-cloud-computing" crlf)
    (printout t "-human-computer-interaction" crlf)
    (printout t "-computer-graphics" crlf)
    (printout t "-operating-system-administation" crlf)
    (printout t "-database-systems" crlf)

    (printout t "*****************************" crlf)
    
    (bind ?read yes)             
     (while (eq ?read yes)
          (printout t "Specialization:" crlf)
          (bind ?specialization (read))
          (assert(specialization ?specialization))
          (printout t "Continue adding specializations?-yes or no" crlf)
          (bind ?read (read)) 
     )
     
(printout t "******************************************************" crlf)
(printout t ?name "-the system suggests these Careerpaths" crlf)
)

;Rules first level
(defrule career_1 "Data Career Path"
   (or (interest analytics|machine-learning)
    (specialization data-science))
=>
    ;(printout t "Data " crlf)
    (assert (first_level data))
)


(defrule career_2 "Network"
    (or (interest networking)
    (specialization CCNP|CCNA|CCIE|WCNA|JNCIE-ENT|CompTIA-Network+|networking))
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
    (or (interest security|cryptography)
    (specialization CISM | CompTIA_Security+ | CCFP | CISSP |SSCP | CAP | CEH|security))
=>
    ;(printout t "Security" crlf)
    (assert (first_level security))
)


(defrule career_5 "Management"
    (or (interest management)
    (specialization CAPM|PgMP|PMP|management))
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

(defrule career_7_0 "Computer Systems Security Architect"
    (and (first_level security)
    (first_level system))
=>
    (printout t "Security Architect" crlf)
)

(defrule career_7_1 "Data Analyst"
    (and (first_level data)
    (interest programming))
=>
    (printout t "Data Analyst" crlf)
)

(defrule career_8 "System Analyst"
    (and (interest security)
    (interest analytics)
    (first_level system))
=>
    (printout t "Systems Analyst" crlf)
)

(defrule career_9 "System Auditor"
    (and (first_level system)
    (or (interest auditing)
    (specialization CISA | GSNA|auditing)))
=>
    (printout t "Computer Systems Auditor" crlf)
)

(defrule career_9_1 "Software QA"
    (and (first_level system)
    (interest programming)
    (or (interest auditing)
    (specialization CISA | GSNA|auditing)))
=>
    (printout t "Software Quality Assurance Tester" crlf)
)


(defrule career_10 "Database Administrator"
    (and (or (interest databases)
    (specialization database-systems))
    (interest programming))
=>
    (printout t "Database Administrator" crlf)
)


(defrule career_12 "software project Manager"
    (and (first_level management)
    (interest computer-systems))
=>
    (printout t "Software Project Manager" crlf)
)

(defrule career_13_1 "Web Designer"
    (and (interest web)
    (first_level design))
=>
    (printout t "Web Designer" crlf)
)

(defrule career_13_2 "Web Developer"
    (and (interest programming)
    (interest web))
=>
    (printout t "Web Programmer" crlf)
)

(defrule career_15_1 "Mobile Developer"
    (and (interest mobile|android|ios|windows)
    (interest programming))
=>
    (printout t "Mobile developer" crlf)
)

(defrule career_15_2 "Mobile Designer"
    (and (interest mobile|android|ios|windows)
    (first_level design))
=>
    (printout t "Mobile Designer" crlf)
)


(defrule career_16 "Game Developer"
    (and (interest games)
    (interest programming)
    (first_level design))
=>
    (printout t "Game Developer" crlf)
)

(defrule career_20 "Social Media Marketing"
    (and (interest marketing)
    (interest social-media)
    (interest programming))
=>
    (printout t "Social Media Marketer " crlf)
)


(defrule career_21 "Software Engineer"
    (and (first_level system)
    (interest programming)
    (first_level design))
=>
    (printout t "Software Engineer" crlf)
)

(defrule career_21_1 "Software documentation"
    (and (first_level system)
    (interest documenting)
    (first_level design))
=>
    (printout t "Computer System Documenter" crlf)
)

(defrule career_22 "Health Systems Developer"
    (and (first_level system)
    (interest programming)
    (interest healthcare)
    (or (first_level design)
    (first_level design|nework|security))
    )
=>
    (printout t "Healthcare Developer" crlf)
)

(defrule career_23 "Cloud network engineer"
    (and (specialization cloud-computing)
    (first_level network))
=>
    (printout t "Cloud network engineer" crlf)
)

(defrule career_24 "Cloud software engineer"
    (and (specialization cloud-computing)
    (interest programming)
    (interest design)
    )
=>
    (printout t "Cloud software engineer" crlf)
)
