# Classification of readmittance rate using Diabetes Dataset

## Project Goal

Diabetes is a very common disease with a wide range of ages. But the treatment varies from patient to patient. Medication regimens and efficiency cycles are also very different for each patient. We used patient information from 130 U.S. hospitals from 1999 to 2008. Through the data, we will analyze the response, cycle and drug resistance rate of different patients to treatment drugs. However, through a large amount of data analysis can provide limited information. Therefore, our project will use machine learning techniques to analyze patients' responses to drugs based on different attributes and determine what are the features that are affecting the readmittance rate.

## Dataset Description

Our dataset is “Diabetes 130-US hospitals for years 1999-2008”.

Source: https://www.kaggle.com/datasets/jimschacko/10-years-diabetes-dataset

This dataset is representative of 10 years (1999-2008) of treatment/clinical care at 130 US hospitals. The information has been extracted from the database of patient encounters based on the following criteria:

- The patient has been admitted to the hospital.
- Diabetes was entered to the system as a diagnosis during the encounter
- The length of hospital stay was between 1 to 14 days
- Lab tests were carried out during the encounter
- Medication was administered during the encounter

The different attributes in the data are as follows:

- Patient number
- Encounter id
- Patient demographics such as race, gender, age and weight
- Pre-decided codes for the hospital industry
- Admission type (basic types of admission for inpatient hospital stays and a code indication priority of admission)
- Discharge disposition id (the final place or setting to which the patient was discharged)
- Admission source id
- Payer code
- Diag Features (indicate the diagnoses of the cause of the patient’s health problem)
- Diag_1 (first diagnose)
- Diag_2 (second diagnose)
- Diag_3 (third diagnose)
- Time in hospital
- Medical specialty
- Number of 
    - Lab procedures
    - Outpatients
    - Emergency
    - Inpatient
    - Diagnoses
    - Different drugs administered (a list of 22 drugs)
- Change (if the drug dosage was changed)
- Diabetes medication
- Readmitted
  - <30 – indicates the patient was readmitted within 30 days of discharge
  - 30- indicates the patient was readmitted after 30 days of discharge
  - No- indicates there was no readmission

## Data Cleaning

- Remove duplicate data points
    There are 101,766 data points in the dataset, some of them are duplicates. We will use patient_nbr column as a reference, since it is a unique number       given to each unique patient.This gave us 71518 data points. 
    
    <img width="550" alt="Screen Shot 2022-08-10 at 12 31 52 PM" src="https://user-images.githubusercontent.com/100812308/183964591-56928914-e44b-4eb3-a768-d46115f055d9.png">

    
- Remove Uninformative Features 
    The uninformative features in the dataset (21 in total) were discarded due to either, a huge amount of missing sample values (>50%), or due to the fact     that some features are not relevant to classify the data towards our target or if the feature is compeletly unbalanced (>95% of data points have the
    same value for the feature).
    
    <img width="368" alt="Screen Shot 2022-07-20 at 5 30 59 PM" src="https://user-images.githubusercontent.com/100812308/183964738-23d1c179-7ca7-404f-a585-715ef0fb1514.png">

- Diag Feature
    Diag Features Fix Diag features indicate the diagnoses of the cause of the patien’s health problem.
    - diag_1: First diagnose
    - diag_2: Second diagnose
    - diag_3: Third diagnose
  
    They are coded in ICD-9 code (https://en.wikipedia.org/wiki/List_of_ICD-9_codes), resulting in hundreds of distinct categories. One way to simplify         this, is by grouping every ICD-9 code value into one of 18 generic health problems. 
    
- Race Feature
    For 'Race' we replaced the missing data points values with ‘Other’ category, as most likely people who skipped filling their race did that                 because they couldn’t find their race listed within the options.
    
- Gender Feature
    For 'Gender' we replaced the invalid values with 'Female' as a larger sample size belongs to this gender category. 

- Age Feature
    For age, we have 10 categories, each represents 10 years range from [0-10] to [90-100]. We replaced those with the middle age for each age range:           for example (0,10] will be replaced with 5; (60, 70] will be replaces by 65; and so on.

- Drugs Feature
    Drugs Features Fix We still have 7 features, each one represents the change in the patient’s dosage of a specific drug, during hospital encounter.         Those 7 drugs are the following: 
    - metformin
    - glimepiride
    - glipizide
    - glyburide
    - pioglitazone  
    - rosiglitaz
    
## Dashboard

The following visualisations were obtained using the top ranking features. 

### Sheet 1 - Age, Race and Gender vs Readmittance

<img width="448" alt="image" src="https://user-images.githubusercontent.com/100812308/183966853-8e05fe83-bcfc-42fb-8ed4-2e506099c68b.png">

- Age group with the highes number of diabetes patients is 70-80. It also contains the highest readmittance rate - 27%.
- Caucasians is the highest represented race.
- The gender split is 53% to 47% in favor of female patients

### Sheet 2 - Drugs Administered for each category of Readmittance Data

<img width="758" alt="image" src="https://user-images.githubusercontent.com/100812308/183966921-893f742a-b0e5-4d18-ab35-3657d0174edd.png">

Most administered drug is Insulin followed by Metformin and Glipizide. An average of 1 dose per patient. This does not necessarily mean that every patient received insulin. But most patients received more than one dose throughout their treatment driving the number close to 1.

### Sheet 3 - Diagonis of Readmitted Patients

<img width="570" alt="image" src="https://user-images.githubusercontent.com/100812308/183966894-0e5464d1-f404-4d74-829f-6b14b864565d.png">

As per diagnosis the reason for Readmittance is Respirator Diseases (30% of readmitted patients) and Immune disorders. This means that the patients contracted this illness during their initial treatment.

### Sheet 4 - Num of Medications, Num of Lab Procedures vs Readmittance

<img width="449" alt="image" src="https://user-images.githubusercontent.com/100812308/183967454-cd0a2ac9-882d-4e05-b639-6b2ed3fc69b1.png">

Comparison of the top ranked features with Readmittance for each category. There is no stark difference between these values which is the classifcation model does not perform to our expectation.

## Machine Learning Models

### Random Forest Classifier 

Attempt 1 - Total Patients - 71518, Accuracy Achieved - 60.98%

<img width="341" alt="image" src="https://user-images.githubusercontent.com/100812308/183970804-3b87e3ae-c6c9-4a3e-bda0-61dfbd22ab3e.png">

Attempt 2 - Total Patients - 100244, Accuracy Achieved - 62.8%

<img width="387" alt="image" src="https://user-images.githubusercontent.com/100812308/183970899-83989502-9794-4cf6-b9ae-4fb2c86a59ae.png">

For Attempt 2, the problem was changed from multi-class classification to binary classification. Accuracy acheived increases slgihtly.
Ther precision score for the 2nd model is comparable for both categories, which is more aligned with our aim.


### ANN Classifier

Attempt 1 - 2 Layer, Activation - RELU, epoch - 100, Accuracy - 54.52%

<img width="357" alt="image" src="https://user-images.githubusercontent.com/100812308/183971152-d7f71215-8f20-4a3f-80c2-864f08561bb0.png">

Attempt 2 - 3 Layers, Activation - TANH, epoch - 100, Accuracy - 62.3%

<img width="381" alt="image" src="https://user-images.githubusercontent.com/100812308/183971237-a6296d62-37e6-4804-b141-e28ef7559035.png">

Again, changing the model to binary classification improves the results.

## Conclusion

After multiple attempts to improve the machine learning model results we reached the following conclusions:

- Random Forest classifier  is more successful in readmittance rate prediction compared to ANN.

- Using more datapoints and converting the model from multi-class classification to binary classification improves the results.

- The classification model can improve if we provide more data points. One way to achieve this is to use updated and live data.

- Obesity is known to have a correlation with diabetes. One major shortcoming of this dataset was that majority of the weight data was missing. We ran the model with weight data, total patients were 3605 and were able to obtain an accuracy of around 58%. More weight data would mean greater accuracy.



