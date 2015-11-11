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

;Cancer
(deftemplate cancer_data "Cancer infomation"
    (slot type)
    (slot smoking)
    (slot alcohol)
    (slot age-max)
    (slot age-min)
    (slot gender_affected)
)

;User details
(deftemplate user "User Details"
    (slot name)
    (slot age)  
    (slot gender)
    (slot smoke)
    (slot alcohol) 
    (slot present)   
)

;Intialize
(defrule init "Welcome Menu"
    (initial-fact)
=>
    (printout t "Welcome to Cancer Awareness Programme" crlf)
    (printout t "Did you Know when Cancer is detected at an early stage, It is curable" crlf)
    (printout t "I am Dr.Cancer Fighter, What's your Name?-" crlf)
    (bind ?name (readline))
    (assert (user (name ?name) (present yes)))
)

;Menu on Awareness 
(defrule menu_awareness
    (user (present yes))
    (user (name ?name))
=>
    (printout t "Let's Pamoja Fight Cancer," ?name crlf)
    (printout t "What of these cancers do you want to learn more,type the name from the options" crlf)
    (printout t "1: Colorectal Cancer" crlf)
    (printout t "2: Lung Cancer" crlf)
    (printout t "3: Blood Cancer" crlf)
    (printout t "4: Retina Cancer" crlf)

    (bind ?type (read))

    (printout t "Know about-Its risk factors-Yes or No" crlf)
    (bind ?riskfactors (read))

    (printout t "Know about-Its Symptoms-Yes or No" crlf)
    (bind ?symptoms (read))

    (printout t "Know about-Its Diagnosis-Yes or No" crlf)
    (bind ?diagnosis (read))

    (printout t "Know about-Its Treatment Options-Yes or No" crlf)
    (bind ?treatment (read))

    (assert (cancer (type ?type) (about yes) (riskfactors ?riskfactors) (symptoms ?symptoms)  (diagnosis ?diagnosis) (treatmentoptions ?treatment) ))

)


;------------------------------------------------------------------------------------------------------------
;Colerectal Cancer rules

(defrule colerectal_rule_about
    (cancer (type 1|colerectal|colon|rectum))
    (cancer (about yes|y|Y|Yes|YES))
=>
    (printout t "--------------------------------------------------------" crlf)
    (printout t "What is Colorectal Cancer?" crlf)
    (printout t "->It also referred to seperately as Colon cancer or Rectum  cancer" crlf)
    (printout t "->It starts in the color or the rectum" crlf)
    (printout t "->Most cases of colon cancer begin as small-non cancerous clumps of cells referred as")
    (printout t "adenomatous polyps.They can turn cancerous,the change happens after 5 to 15 yrs" crlf)
    (printout t "As the cancer cells multiply they form tumour")
    (printout t "that invades deeper into the wall of colon or rectum" crlf)
    (printout t "->It is common in Kenya and increasingly common in the 30-50 age group" crlf)
    (printout t "--------------------------------------------------------" crlf)

)

(defrule colerectal_rule_riskfactors
    (cancer (type 1|colerectal|colon|rectum))
    (cancer (riskfactors yes|y|Y|Yes|YES))
=>
    (printout t "****************************************************" crlf)
    (printout t "Risk factors to Colorectal Cancer" crlf)
    (printout t "->Age: High chances after age 50" crlf)
    (printout t "->Family history of colorectal Cancer" crlf)
    (printout t "->Inherited syndromes :inherited genes defects" crlf)
    (printout t "->Racial and Ethnic backgroud-African Americans have highest incidences" crlf)
    (printout t "->Type 2 Diabetes Patients have a higher risk" crlf)
    (printout t "->Diet: Rich in fat, sugar, low fibre, read meat" crlf)
    (printout t "->Obesity and physical inactivity" crlf)
    (printout t "->Smoking and Heavy alcohol use" crlf)
    (printout t "****************************************************" crlf)

)

(defrule colerectal_rule_symptoms
    (cancer (type 1|colerectal|colon|rectum))
    (cancer (symptoms yes|y|Y|Yes|YES))
=>
    (printout t "****************************************************" crlf)
    (printout t "Signs and Symptoms of Colorectal Cancer" crlf)
    (printout t "->Change in bowel habits-diarrhea and constipation" crlf)
    (printout t "->Rectal bleeding-dark stools" crlf)
    (printout t "->Cramping or abdominal pain" crlf)
    (printout t "->Weakness and fatigue" crlf)
    (printout t "->Unintended weight loss" crlf)
    (printout t "->Passing mucus with the faeces" crlf)
    (printout t "****************************************************" crlf)

)

(defrule colerectal_rule_diagnosis
    (cancer (type 1|colerectal|colon|rectum))
    (cancer (diagnosis yes|y|Y|Yes|YES))
    
=>
    (printout t "****************************************************" crlf)
    (printout t "Diagnosis of Colorectal Cancer" crlf)
    (printout t "->Tests performed:" crlf)
    (printout t "-->Faecal Occult Blood Test-FOB Test-detect small amounts of blood in faeces" crlf)
    (printout t "-->Colonoscopy-" crlf)
    (printout t "-->Barium EnemaTake X-ray of colon after taking barium" crlf)
    (printout t "****************************************************" crlf)
)


(defrule colerectal_rule_treatmentoptions
    (cancer (type 1|colerectal|colon|rectum))
    (cancer (treatmentoptions yes|y|Y|Yes|YES))
=>
    (printout t "****************************************************" crlf)
    (printout t "Treatment Options of Colorectal Cancer" crlf)
    (printout t "->They include:" crlf)
    (printout t "-->Chemotherapy-using drugs" crlf)
    (printout t "-->Radiotherapy" crlf)
    (printout t "-->Surgery" crlf)
    (printout t "****************************************************" crlf)
    

)

;-----------------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------------------
;Lung Cancer rules

(defrule lung_rule_about
    (cancer (type 2|lung))
    (cancer (about yes|y|Y|Yes|YES))
=>
    (printout t "--------------------------------------------------------" crlf)
    (printout t "What is Lung Cancer?" crlf)
    (printout t "->It is a cancer that begins in the lungs and most often common to smokers" crlf)
    (printout t "->It is estimated that by year 2030 there will be 100 million deaths per year from lung cancer" crlf)
    (printout t "->It is strongly linked to tobacco smoking" crlf)
    (printout t "->Incidence in Kenya has been reducing among men but increasing among women and youth" crlf)
    (printout t "--------------------------------------------------------" crlf)

)

(defrule lung_rule_riskfactors
    (cancer (type 2|lung))
    (cancer (riskfactors yes|y|Y|Yes|YES))
=>
    (printout t "****************************************************" crlf)
    (printout t "Risk factors to Lung Cancer" crlf)
    (printout t "->Smoking Tobacco/shisha-Major risk factor" crlf)
    (printout t "->Atmospheric pollution by toxic gases" crlf)
    (printout t "->Occupational hazards-exposure to asbestos and metals such as nickel" crlf)
    (printout t "->Vitamin A deficient diets" crlf)

    (printout t "****************************************************" crlf)

)

(defrule lung_rule_symptoms
    (cancer (type 2|lung))
    (cancer (symptoms yes|y|Y|Yes|YES))
=>
    (printout t "****************************************************" crlf)
    (printout t "Signs and Symptoms of Lung Cancer" crlf)
    (printout t "->Chest Pain" crlf)
    (printout t "->Weight loss" crlf)
    (printout t "->Loss of Appetite" crlf)
    (printout t "->Coughing up blood" crlf)
    (printout t "->Difficulty in breathing" crlf)
    (printout t "->Bone Pain" crlf)
    (printout t "->Yellowing of the eyes" crlf)
    (printout t "->Recurrent Chest Infections" crlf)
    (printout t "->Mostly diagnosed in 40-70 yeear olds" crlf)
    (printout t "->Persistent cough especially if it worsens" crlf)
    (printout t "****************************************************" crlf)

)

(defrule lung_rule_diagnosis
    (cancer (type 2|lung))
    (cancer (diagnosis yes|y|Y|Yes|YES))
    
=>
    (printout t "****************************************************" crlf)
    (printout t "Diagnosis of Lung Cancer" crlf)
    (printout t "->Sputum cytology" crlf)
    (printout t "-->Sample of mucus coughed up from the lungs is looked under microscope to see whether there are abnormal cells" crlf)
    (printout t "->Chest Xray-to identify a lung cancer lesion" crlf)
    (printout t "->Compute tomography-CT scan-gives pictures of any abnormalities in the lungs" crlf)
    (printout t "****************************************************" crlf)
)


(defrule lung_rule_treatmentoptions
    (cancer (type 2|lung))
    (cancer (treatmentoptions yes|y|Y|Yes|YES))
=>
    (printout t "****************************************************" crlf)
    (printout t "Treatment Options of Lung Cancer" crlf)
    (printout t "->They include:" crlf)
    (printout t "-->Chemotherapy-using drugs" crlf)
    (printout t "-->Radiotherapy" crlf)
    (printout t "-->Surgery" crlf)
    (printout t "->Prevention tips- Avoid/stop smoking,Include vitamin A sources in your diet" crlf)
    (printout t "****************************************************" crlf)
    
)

;-----------------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------------------
;Blood Cancer rules

(defrule blood_rule_about
    (cancer (type 3|blood|leukemia))
    (cancer (about yes|y|Y|Yes|YES))
=>
    (printout t "--------------------------------------------------------" crlf)
    (printout t "What is Blood Cancer/Leukaemia?" crlf)
    (printout t "->It is cancer of white blood cells" crlf)
    (printout t "->Happens when abnormal White blood cells are made in excess by the bone marrow and replace other cells in the blood-red blood cells and platelets" crlf)
    (printout t "->Types of Leukaemia" crlf)
    (printout t "-->Acute and chronic-depending on how fast the disease has developed" crlf)
    (printout t "--->Children mostly get acute while adults chronic Leukemia" crlf)
    (printout t "-->Myleoid and lymphoid-depending on the type of white blood cell that is affected" crlf)
    (printout t "--------------------------------------------------------" crlf)

)

(defrule blood_rule_riskfactors
    (cancer (type 3|blood))
    (cancer (riskfactors yes|y|Y|Yes|YES))
=>
    (printout t "****************************************************" crlf)
    (printout t "Risk factors to Leukemia" crlf)
    (printout t "->Smoking" crlf)
    (printout t "->Radiation from exposure at work or from treatment of a previous cancer" crlf)
    (printout t "->Chemicals such as Benzene-found in some paints" crlf)
    (printout t "Long term handling of pesticides" crlf)
    (printout t "****************************************************" crlf)

)

(defrule blood_rule_symptoms
    (cancer (type 3|blood))
    (cancer (symptoms yes|y|Y|Yes|YES))
=>
    (printout t "****************************************************" crlf)
    (printout t "Signs and Symptoms of  Cancer" crlf)
    (printout t "->Easy bleeding eg bleeding guns when brushing teeth" crlf)
    (printout t "->Bruises under the skin" crlf)
    (printout t "->Easy tiredness" crlf)
    (printout t "->Body weakness" crlf)
    (printout t "->Frequent Infections" crlf)
    (printout t "->Bone Pains" crlf)
    (printout t "Weight Loss" crlf)
    (printout t "****************************************************" crlf)

)

(defrule blood_rule_diagnosis
    (cancer (type 3|blood))
    (cancer (diagnosis yes|y|Y|Yes|YES))
    
=>
    (printout t "****************************************************" crlf)
    (printout t "Diagnosis of Leukaemia" crlf)
    (printout t "->Take a history of your health" crlf)
    (printout t "->Physical examination" crlf)
    (printout t "->Do some Blood tests" crlf)
    (printout t "-->Bone marrow aspirate: small bone marrow checked the presence of leukaemia cells" crlf)
    (printout t "****************************************************" crlf)
)


(defrule blood_rule_treatmentoptions
    (cancer (type 3|blood))
    (cancer (treatmentoptions yes|y|Y|Yes|YES))
=>
    (printout t "****************************************************" crlf)
    (printout t "Treatment Options of Leukaemia" crlf)
    (printout t "->They include:" crlf)
    (printout t "-->Chemotherapy-using drugs" crlf)
    (printout t "-->Bone Marrow Transplant" crlf)
    (printout t "****************************************************" crlf)
    
)

;-----------------------------------------------------------------------------------------------------------

;------------------------------------------------------------------------------------------------------------
;Retina Cancer rules

(defrule retina_rule_about
    (cancer (type 4|retinoblastoma))
    (cancer (about yes|y|Y|Yes|YES))
=>
    (printout t "--------------------------------------------------------" crlf)
    (printout t "What is Retinoblastoma?" crlf)
    (printout t "-> Retinoblastoma is a rare type of cancer that develops in the retina" crlf)
    (printout t "-->When one is diagnosed with retinoblastoma, cells of the retina grow rapidly out of control " crlf)
    (printout t "->Develops in early childhood, among children less than 5 years of age" crlf)
    (printout t "->It rarely spreads to other body parts" crlf)

    (printout t "--------------------------------------------------------" crlf)

)

(defrule retina_rule_riskfactors
    (cancer (type 4|retinoblastoma))
    (cancer (riskfactors yes|y|Y|Yes|YES))
=>
    (printout t "****************************************************" crlf)
    (printout t "Risk factors to Retinoblastoma" crlf)
    (printout t "->Genetic" crlf)
    (printout t "****************************************************" crlf)

)

(defrule retina_rule_symptoms
    (cancer (type 4|retinoblastoma))
    (cancer (symptoms yes|y|Y|Yes|YES))
=>
    (printout t "****************************************************" crlf)
    (printout t "Signs and Symptoms of Retinoblastoma:" crlf)
    (printout t "->A visible whiteness in the pupil called cat's eye reflex" crlf)
    (printout t "->Crossed eyes or eyes that do not point in the same direction" crlf)
    (printout t "->Persisten eye pain, redness, or irritation and blindness or poor vision in affected eye/s" crlf)
    (printout t "****************************************************" crlf)

)

(defrule retina_rule_diagnosis
    (cancer (type 4|retinoblastoma))
    (cancer (diagnosis yes|y|Y|Yes|YES))
    
=>
    (printout t "****************************************************" crlf)
    (printout t "Diagnosis of Retinoblastoma" crlf)
    (printout t "->Doctor uses the signs and symptoms of retinoblastoma to diagnose" crlf)
    (printout t "->Diagnosis can be confirmed using Ultrasonography, CT scan, or MRI" crlf)
    (printout t "****************************************************" crlf)
)


(defrule retina_rule_treatmentoptions
    (cancer (type 4|retinoblastoma))
    (cancer (treatmentoptions yes|y|Y|Yes|YES))
=>
    (printout t "****************************************************" crlf)
    (printout t "Treatment Options of Retinoblastoma" crlf)
    (printout t "->They include:" crlf)
    (printout t "-->Laser treatment to the eyes" crlf)
    (printout t "-->Radioactive plaque" crlf)
    (printout t "-->Chemotherapy" crlf)
    (printout t "-->Surgery to remove the eye" crlf)
    (printout t "****************************************************" crlf)
    
)

;-----------------------------------------------------------------------------------------------------------



