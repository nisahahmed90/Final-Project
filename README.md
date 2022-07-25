# Readmittance Rate Classification on Diabetes Dataset

## Project Goal

Diabetes is a very common disease with a wide range of ages. But the treatment varies from patient to patient. Medication regimens and efficiency cycles are also very different for each patient. We used patient information from 130 U.S. hospitals from 1999 to 2008. Through the data, we will analyze the response, cycle and drug resistance rate of different patients to treatment drugs. However, through a large amount of data analysis can provide limited information. Therefore, our project will use machine learning techniques to analyze patients' responses to drugs based on different attributes and determine what are the features that are affecting the readmittance rate.

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

## ERD

![QuickDBD-export](https://user-images.githubusercontent.com/100053788/179641288-30c5a188-8550-4c83-8f7b-9401be7202d1.png)


## Hypothesis

**Null Hyphothesis** - The features do not help us determine the readmittance rate (they are unrelated).

**Alternate Hyphothesis** - The features help us determine the readmittance rate (they are related).

## Data Pipeline

Begining with the ETL process extracting diabeties dataset and cleaning the data:

1. Find null values in each column.
2. Remove columns with excessive null values and columns which do not have much importance to the dataset.
3. Removing all the duplicate values.
4. Naming all the features.
['encounter_id', 'patient_nbr', 'race', 'gender', 'age', 'weight', 'admission_type_id', 'discharge_disposition_id', 'admission_source_id', 'time_in_hospital', 'payer_code', 'medical_specialty', 'num_lab_procedures', 'num_procedures', 'num_medications', 'number_outpatient', 'number_emergency', 'number_inpatient', 'diag_1', 'diag_2', 'diag_3', 'number_diagnoses', 'max_glu_serum', 'A1Cresult', 'metformin', 'repaglinide', 'nateglinide', 'chlorpropamide', 'glimepiride', 'acetohexamide', 'glipizide', 'glyburide', 'tolbutamide', 'pioglitazone', 'rosiglitazone', 'acarbose', 'miglitol', 'troglitazone', 'tolazamide', 'examide', 'citoglipton', 'insulin', 'glyburide.metformin', 'glipizide.metformin', 'glimepiride.pioglitazone', 'metformin.rosiglitazone', 'metformin.pioglitazone', 'change', 'diabetesMed', 'readmitted']

5. Create Visulaizations to better undestand the data.
6. 
### Machine Learning Model

![image](https://user-images.githubusercontent.com/100053788/179646044-6fc722b6-a5f9-4159-9319-b469e534f51b.png)

The aim of the machine learning model is to find the readmittance rate, which makes it a classification problem.
Since the number of Features in this dataset will be more than 35, we will implement Deep Learning Model.
Comparatively we will also train an SVM and Random Forests model and discuss the results. The Random Forest classifier will allow us the determine the best features for data selection, which we can use to streamline our Deep Learning Classifier and SVM Classifier.

