;---------------------------------------------------------------------------------
;   Let's Fight Cancer By Creating Awareness-when detected early, it is curable.
;   The aim of this program is to create awareness about cancer to the public. 
;   I will focus on Colerectal cancer, Lung Cancer, Leukemia and Retinoblastoma.
;   Author: Dennis Banga
;   Date: 6-10-2015
;---------------------------------------------------------------------------------

;Defining templates
(deftemplate cancer "Cancer infomation"
    (slot type)
    (slot about)
    (slot symptoms)
    (slot riskfactors)
    (slot diagnosis)
    (slot treatmentoptions)
)

;User details
(deftemplate user "User Details"
    (slot name)
    (slot age)  
    (slot gender)
    (slot smoke)
    (slot alcohol)    
)

;Intialize
(defrule init "Welcome Menu"
    (inital-fact)
=>
    (printout -t "Welcome to Cancer Awareness Programme" crlf)
    (printout -t Did you Know when Cancer is detected at an early stage, It is curable" crlf)
    (printout -t "I am Dr.Cancer Fighter, What's your Name?-" crlf)
    (bind ?name (read))
    (assert (user (name ?name)))
)

;Menu on Awareness 
(defrule menu_awareness
    ?name<-(user (name ?name))
=>
    (printout -t "Let's Pamoja Fight Cancer," ?name crlf)
    (printout -t "What of this cancers do you want to learn more,(type the name from the options)" crlf)
    (printout -t "1: Colorectal Cancer" crlf)
    (printout -t "2: Lung Cancer" crlf)
    (printout -t "3: Blood Cancer" crlf)
    (printout -t "4: Retina Cancer" crlf)

    (bind ?type (read))
    (assert (cancer (type ?type)))
    (assert (cancer (about yes)))

    (printout -t "Know about-Its risk factors-Yes or No" crlf)
    (bind ?riskfactors (read))
    (assert (cancer (riskfactors ?riskfactors)))

    (printout -t "Know about-Its Symptoms-Yes or No" crlf)
    (bind ?symptoms (read))
    (assert (cancer (symptoms ?symptoms)))

    (printout -t "Know about-Its Diagnosis-Yes or No" crlf)
    (bind ?diagnosis (read))
    (assert (cancer (diagnosis ?diagnosis)))

    (printout -t "Know about-Its Treatment Options-Yes or No" crlf)
    (bind ?treatment (read))
    (assert (cancer (treatmentoptions ?treatment)))

)


;Colerectal Cancer details

(defrule colerectal_rule
    (and (cancer (type colerectal|colon|rectum))
        (cancer (about yes|y|Y|Yes|YES))
    )
=>
    (printout -t "--------------------------------------------------------" crlf)
    (printout -t "What is Colorectal Cancer?" crlf)
    (printout -t "->It also referred to seperately as Colon cancer or Rectum  cancer" crlf)
    (printout -t "->It starts in the color or the rectum" crlf)
    (printout -t "->Most cases of colon cancer begin as small-non cancerous clumps of cells(adenomatous polyps).The benign polyps can turn cancerous , the change happens after 5 to 15 years" crlf)
    (printout -t "As the cancer cells multiply they for tumour that invades deeper into the wall of colon or rectum" crlf)
    (printout -t "->It is common in Kenya and increasingly common in the 30-50 age group")
    (printout -t "--------------------------------------------------------" crlf)

    (if (cancer (riskfactors yes|y|Y|Yes|YES)) then
        (printout -t "****************************************************" crlf)
        (printout -t "Risk factors of Colorectal Cancer" crlf)
        (printout -t "->Age: High chances after age 50" crlf)
        (printout -t "->Family history of colorectal Cancer" crlf)
         (printout -t "->Inherited syndromes :inherited genes defects" crlf)
          (printout -t "->Racial and Ethnic backgroud-African Americans have highest incidences but mortality rates of all racial groups" crlf)
        (printout -t "->Type 2 Diabetes Patients have a higher risk" crlf)
        (printout -t "->Diet: Rich in fat, sugar, low fibre, read meat" crlf)
        (printout -t "->Obesity and physical inactivity" crlf)
        (printout -t "->Smoking and Heavy alcohol use" crlf)
        (printout -t "****************************************************" crlf)
    )

     (if (cancer (symptoms yes|y|Y|Yes|YES)) then
        (printout -t "****************************************************" crlf)
        (printout -t "Signs and Symptoms of Colorectal Cancer" crlf)
        (printout -t "->Change in bowel habits-diarrhea and constipation" crlf)
        (printout -t "->Rectal bleeding-dark stools" crlf)
        (printout -t "->Cramping or abdominal pain" crlf)
        (printout -t "->Weakness and fatigue" crlf)
        (printout -t "->Unintended weight loss" crlf)
        (printout -t "->Passing mucus with the faeces" crlf)
        (printout -t "****************************************************" crlf)
    )

     (if (cancer (diagnosis yes|y|Y|Yes|YES)) then
        (printout -t "****************************************************" crlf)
        (printout -t "Diagnosis of Colorectal Cancer" crlf)
        (printout -t "->Tests performed:" crlf)
        (printout -t "-->Faecal Occult Blood Test(FOB Test)-detect small amounts of blood in faeces" crlf)
        (printout -t "-->Colonoscopy-" crlf)
        (printout -t "-->Barium Enema-Take X-ray of colon after taking barium" crlf)
        (printout -t "****************************************************" crlf)
    )

    (if (cancer (treatmentoptions yes|y|Y|Yes|YES)) then
        (printout -t "****************************************************" crlf)
        (printout -t "Treatment Options of Colorectal Cancer" crlf)
        (printout -t "->They include:" crlf)
        (printout -t "-->Chemotherapy-using drugs" crlf)
        (printout -t "-->Radiotherapy" crlf)
        (printout -t "-->Surgery" crlf)
        (printout -t "****************************************************" crlf)
    )


)









