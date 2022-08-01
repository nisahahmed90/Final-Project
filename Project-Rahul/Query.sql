CREATE TABLE diabetes_db(
	id INT NOT NULL,
	encounter_id BIGINT NOT NULL,
	patient_nbr BIGINT NOT NULL,
	race VARCHAR(80),
	gender VARCHAR(80),
	age	VARCHAR(80),
	weight VARCHAR(10), 
	admission_type_id INT NOT NULL,
	discharge_disposition_id INT NOT NULL,
	admission_source_id	INT NOT NULL,
	time_in_hospital INT NOT NULL,
	payer_code	VARCHAR(80),
	medical_specialty VARCHAR(80),
	num_lab_procedures	INT NOT NULL,
	num_procedures	INT NOT NULL,
	num_medications	INT NOT NULL,
	number_outpatient INT NOT NULL,
	number_emergency INT NOT NULL,
	number_inpatient INT NOT NULL,
	diag_1	VARCHAR(10),
	diag_2	VARCHAR(10),
	diag_3	VARCHAR(10),
	number_diagnoses INT NOT NULL,
	max_glu_serum VARCHAR(10),
	A1Cresult VARCHAR(10),
	metformin VARCHAR(10),
	repaglinide	VARCHAR(10),
	nateglinide	VARCHAR(10),
	chlorpropamide VARCHAR(10),
	glimepiride	VARCHAR(10),
	acetohexamide VARCHAR(10),
	glipizide	VARCHAR(10),
	glyburide VARCHAR(10),
	tolbutamide	VARCHAR(10),
	pioglitazone VARCHAR(10),
	rosiglitazone VARCHAR(10),
	acarbose VARCHAR(10),
	miglitol VARCHAR(10),
	troglitazone VARCHAR(10),
	tolazamide VARCHAR(10),
	examide	VARCHAR(10),
	citoglipton	VARCHAR(10),
	insulin	VARCHAR(10),
	glyburide_metformin	VARCHAR(10),
	glipizide_metformin	VARCHAR(10),
	glimepiride_pioglitazone VARCHAR(10),
	metformin_rosiglitazone	VARCHAR(10),
	metformin_pioglitazone VARCHAR(10),
	change VARCHAR(10),
	diabetesMed	VARCHAR(10),
	readmitted VARCHAR(10)
	);