## Dataset Description
Our dataset is “Diabetes 130-US hospitals for years 1999-2008”.

Source: https://www.kaggle.com/datasets/jimschacko/10-years-diabetes-dataset 

This dataset is representative of 10 years (1999-2008) of treatment/clinical care at 130 US hospitals. The information has been extracted from the database of patient encounters based on the following criteria:
-	The patient has been admitted to the hospital.
-	Diabetes was entered to the system as a diagnosis during the encounter
-	The length of hospital stay was between 1 to 14 days
-	Lab tests were carried out during the encounter
-	Medication was administered during the encounter

The different attributes in the data are as follows:
-	Patient number
-	Encounter id
-	Patient demographics such as race, gender, age and weight
-	Pre-decided codes for the hospital industry 
    - Admission type (basic types of admission for inpatient hospital stays and a code indication priority of admission)
    - Discharge disposition id (the final place or setting to which the patient was discharged)
    - Admission source id
    - Payer code
    
-	Diag Features (indicate the diagnoses of the cause of the patient’s health problem)
    - Diag_1 (first diagnose)
    - Diag_2 (second diagnose)
    - Diag_3 (third diagnose)
-	Time in hospital 
-	Medical specialty 
-	Number of
    - Lab procedures
    - Procedures
    - Outpatients 
    - Emergency
    - Inpatient
    - Diagnoses
-	Different drugs administered (a list of 22 drugs)
-	Change (if the drug dosage was changed)
-	Diabetes medication
-	Readmitted 
    - <30 – indicates the patient was readmitted within 30 days of discharge
    - >30- indicates the patient was readmitted after 30 days of discharge 
    - No- indicates there was no readmission
