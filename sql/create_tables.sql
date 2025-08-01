--CREATE TABLES

--STATE CODES
CREATE TABLE STATE_CODES (		
STATE_CODE	VARCHAR (255)	,
STATE_NAME	VARCHAR (255)	);

--DX CODES
CREATE TABLE DGNS_CODES (		
DGNS_CD	VARCHAR (255)	,
DGNS_DESC	VARCHAR (255)	);

--SG CODES
CREATE TABLE PRCDR_CODES (		
PRCDR_CD	VARCHAR (255)	,
PRCDR_DESC	VARCHAR (255)	);

--BENEFICIARY SUMMARY
CREATE TABLE BENEFICIARY_SUMMARY (		
DESYNPUF_ID	VARCHAR (255)	,
BENE_BIRTH_DT	DATE	,
BENE_DEATH_DT	DATE	,
BENE_SEX_IDENT_CD	VARCHAR (255)	,
BENE_RACE_CD	VARCHAR (255)	,
BENE_ESRD_IND	VARCHAR (255)	,
SP_STATE_CODE	VARCHAR (255)	,
BENE_COUNTY_CD	VARCHAR (255)	,
BENE_HI_CVRAGE_TOT_MONS	VARCHAR (255)	,
BENE_SMI_CVRAGE_TOT_MONS	VARCHAR (255)	,
BENE_HMO_CVRAGE_TOT_MONS	VARCHAR (255)	,
PLAN_CVRG_MOS_NUM	VARCHAR (255)	,
SP_ALZHDMTA	VARCHAR (255)	,
SP_CHF	VARCHAR (255)	,
SP_CHRNKIDN	VARCHAR (255)	,
SP_CNCR	VARCHAR (255)	,
SP_COPD	VARCHAR (255)	,
SP_DEPRESSN	VARCHAR (255)	,
SP_DIABETES	VARCHAR (255)	,
SP_ISCHMCHT	VARCHAR (255)	,
SP_OSTEOPRS	VARCHAR (255)	,
SP_RA_OA	VARCHAR (255)	,
SP_STRKETIA	VARCHAR (255)	,
MEDREIMB_IP	VARCHAR (255)	,
BENRES_IP	VARCHAR (255)	,
PPPYMT_IP	VARCHAR (255)	,
MEDREIMB_OP	VARCHAR (255)	,
BENRES_OP	VARCHAR (255)	,
PPPYMT_OP	VARCHAR (255)	,
MEDREIMB_CAR	VARCHAR (255)	,
BENRES_CAR	VARCHAR (255)	,
PPPYMT_CAR	VARCHAR (255)	);

--remove leading zeros in sp_state_code
UPDATE beneficiary_summary
SET sp_state_code = TRIM(LEADING '0' FROM sp_state_code)
WHERE sp_state_code LIKE '0%';

SELECT DISTINCT sp_state_code FROM beneficiary_summary WHERE sp_state_code LIKE '0%';

--INPATIENT CLAIMS
CREATE TABLE INPATIENT_CLAIMS (		
DESYNPUF_ID	VARCHAR (255)	,
CLM_ID	VARCHAR (255)	,
SEGMENT	VARCHAR (255)	,
CLM_FROM_DT	DATE	,
CLM_THRU_DT	DATE	,
PRVDR_NUM	VARCHAR (255)	,
CLM_PMT_AMT	DECIMAL(19,4)	,
NCH_PRMRY_PYR_CLM_PD_AMT	DECIMAL(19,4)	,
AT_PHYSN_NPI	VARCHAR (255)	,
OP_PHYSN_NPI	VARCHAR (255)	,
OT_PHYSN_NPI	VARCHAR (255)	,
CLM_ADMSN_DT	DATE	,
ADMTNG_ICD9_DGNS_CD	VARCHAR (255)	,
CLM_PASS_THRU_PER_DIEM_AMT	DECIMAL(19,4)	,
NCH_BENE_IP_DDCTBL_AMT	DECIMAL(19,4)	,
NCH_BENE_PTA_COINSRNC_LBLTY_AM	DECIMAL(19,4)	,
NCH_BENE_BLOOD_DDCTBL_LBLTY_AM	DECIMAL(19,4)	,
CLM_UTLZTN_DAY_CNT	VARCHAR (255)	,
NCH_BENE_DSCHRG_DT	DATE	,
CLM_DRG_CD	VARCHAR (255)	,
ICD9_DGNS_CD_1	VARCHAR (255)	,
ICD9_DGNS_CD_2	VARCHAR (255)	,
ICD9_DGNS_CD_3	VARCHAR (255)	,
ICD9_DGNS_CD_4	VARCHAR (255)	,
ICD9_DGNS_CD_5	VARCHAR (255)	,
ICD9_DGNS_CD_6	VARCHAR (255)	,
ICD9_DGNS_CD_7	VARCHAR (255)	,
ICD9_DGNS_CD_8	VARCHAR (255)	,
ICD9_DGNS_CD_9	VARCHAR (255)	,
ICD9_DGNS_CD_10	VARCHAR (255)	,
ICD9_PRCDR_CD_1	VARCHAR (255)	,
ICD9_PRCDR_CD_2	VARCHAR (255)	,
ICD9_PRCDR_CD_3	VARCHAR (255)	,
ICD9_PRCDR_CD_4	VARCHAR (255)	,
ICD9_PRCDR_CD_5	VARCHAR (255)	,
ICD9_PRCDR_CD_6	VARCHAR (255)	,
HCPCS_CD_1	VARCHAR (255)	,
HCPCS_CD_2	VARCHAR (255)	,
HCPCS_CD_3	VARCHAR (255)	,
HCPCS_CD_4	VARCHAR (255)	,
HCPCS_CD_5	VARCHAR (255)	,
HCPCS_CD_6	VARCHAR (255)	,
HCPCS_CD_7	VARCHAR (255)	,
HCPCS_CD_8	VARCHAR (255)	,
HCPCS_CD_9	VARCHAR (255)	,
HCPCS_CD_10	VARCHAR (255)	,
HCPCS_CD_11	VARCHAR (255)	,
HCPCS_CD_12	VARCHAR (255)	,
HCPCS_CD_13	VARCHAR (255)	,
HCPCS_CD_14	VARCHAR (255)	,
HCPCS_CD_15	VARCHAR (255)	,
HCPCS_CD_16	VARCHAR (255)	,
HCPCS_CD_17	VARCHAR (255)	,
HCPCS_CD_18	VARCHAR (255)	,
HCPCS_CD_19	VARCHAR (255)	,
HCPCS_CD_20	VARCHAR (255)	,
HCPCS_CD_21	VARCHAR (255)	,
HCPCS_CD_22	VARCHAR (255)	,
HCPCS_CD_23	VARCHAR (255)	,
HCPCS_CD_24	VARCHAR (255)	,
HCPCS_CD_25	VARCHAR (255)	,
HCPCS_CD_26	VARCHAR (255)	,
HCPCS_CD_27	VARCHAR (255)	,
HCPCS_CD_28	VARCHAR (255)	,
HCPCS_CD_29	VARCHAR (255)	,
HCPCS_CD_30	VARCHAR (255)	,
HCPCS_CD_31	VARCHAR (255)	,
HCPCS_CD_32	VARCHAR (255)	,
HCPCS_CD_33	VARCHAR (255)	,
HCPCS_CD_34	VARCHAR (255)	,
HCPCS_CD_35	VARCHAR (255)	,
HCPCS_CD_36	VARCHAR (255)	,
HCPCS_CD_37	VARCHAR (255)	,
HCPCS_CD_38	VARCHAR (255)	,
HCPCS_CD_39	VARCHAR (255)	,
HCPCS_CD_40	VARCHAR (255)	,
HCPCS_CD_41	VARCHAR (255)	,
HCPCS_CD_42	VARCHAR (255)	,
HCPCS_CD_43	VARCHAR (255)	,
HCPCS_CD_44	VARCHAR (255)	,
HCPCS_CD_45	VARCHAR (255)	);

--OUTPATIENT CLAIMS
CREATE TABLE OUTPATIENT_CLAIMS (		
DESYNPUF_ID	VARCHAR (255)	,
CLM_ID	VARCHAR (255)	,
SEGMENT	VARCHAR (255)	,
CLM_FROM_DT	DATE	,
CLM_THRU_DT	DATE	,
PRVDR_NUM	VARCHAR (255)	,
CLM_PMT_AMT	DECIMAL(19,4)	,
NCH_PRMRY_PYR_CLM_PD_AMT	DECIMAL(19,4)	,
AT_PHYSN_NPI	VARCHAR (255)	,
OP_PHYSN_NPI	VARCHAR (255)	,
OT_PHYSN_NPI	VARCHAR (255)	,
NCH_BENE_BLOOD_DDCTBL_LBLTY_AM	DECIMAL(19,4)	,
ICD9_DGNS_CD_1	VARCHAR (255)	,
ICD9_DGNS_CD_2	VARCHAR (255)	,
ICD9_DGNS_CD_3	VARCHAR (255)	,
ICD9_DGNS_CD_4	VARCHAR (255)	,
ICD9_DGNS_CD_5	VARCHAR (255)	,
ICD9_DGNS_CD_6	VARCHAR (255)	,
ICD9_DGNS_CD_7	VARCHAR (255)	,
ICD9_DGNS_CD_8	VARCHAR (255)	,
ICD9_DGNS_CD_9	VARCHAR (255)	,
ICD9_DGNS_CD_10	VARCHAR (255)	,
ICD9_PRCDR_CD_1	VARCHAR (255)	,
ICD9_PRCDR_CD_2	VARCHAR (255)	,
ICD9_PRCDR_CD_3	VARCHAR (255)	,
ICD9_PRCDR_CD_4	VARCHAR (255)	,
ICD9_PRCDR_CD_5	VARCHAR (255)	,
ICD9_PRCDR_CD_6	VARCHAR (255)	,
NCH_BENE_PTB_DDCTBL_AMT	DECIMAL(19,4)	,
NCH_BENE_PTB_COINSRNC_AMT	DECIMAL(19,4)	,
ADMTNG_ICD9_DGNS_CD	VARCHAR (255)	,
HCPCS_CD_1	VARCHAR (255)	,
HCPCS_CD_2	VARCHAR (255)	,
HCPCS_CD_3	VARCHAR (255)	,
HCPCS_CD_4	VARCHAR (255)	,
HCPCS_CD_5	VARCHAR (255)	,
HCPCS_CD_6	VARCHAR (255)	,
HCPCS_CD_7	VARCHAR (255)	,
HCPCS_CD_8	VARCHAR (255)	,
HCPCS_CD_9	VARCHAR (255)	,
HCPCS_CD_10	VARCHAR (255)	,
HCPCS_CD_11	VARCHAR (255)	,
HCPCS_CD_12	VARCHAR (255)	,
HCPCS_CD_13	VARCHAR (255)	,
HCPCS_CD_14	VARCHAR (255)	,
HCPCS_CD_15	VARCHAR (255)	,
HCPCS_CD_16	VARCHAR (255)	,
HCPCS_CD_17	VARCHAR (255)	,
HCPCS_CD_18	VARCHAR (255)	,
HCPCS_CD_19	VARCHAR (255)	,
HCPCS_CD_20	VARCHAR (255)	,
HCPCS_CD_21	VARCHAR (255)	,
HCPCS_CD_22	VARCHAR (255)	,
HCPCS_CD_23	VARCHAR (255)	,
HCPCS_CD_24	VARCHAR (255)	,
HCPCS_CD_25	VARCHAR (255)	,
HCPCS_CD_26	VARCHAR (255)	,
HCPCS_CD_27	VARCHAR (255)	,
HCPCS_CD_28	VARCHAR (255)	,
HCPCS_CD_29	VARCHAR (255)	,
HCPCS_CD_30	VARCHAR (255)	,
HCPCS_CD_31	VARCHAR (255)	,
HCPCS_CD_32	VARCHAR (255)	,
HCPCS_CD_33	VARCHAR (255)	,
HCPCS_CD_34	VARCHAR (255)	,
HCPCS_CD_35	VARCHAR (255)	,
HCPCS_CD_36	VARCHAR (255)	,
HCPCS_CD_37	VARCHAR (255)	,
HCPCS_CD_38	VARCHAR (255)	,
HCPCS_CD_39	VARCHAR (255)	,
HCPCS_CD_40	VARCHAR (255)	,
HCPCS_CD_41	VARCHAR (255)	,
HCPCS_CD_42	VARCHAR (255)	,
HCPCS_CD_43	VARCHAR (255)	,
HCPCS_CD_44	VARCHAR (255)	,
HCPCS_CD_45	VARCHAR (255)	);

--Create combined claims table for PowerBI connection
--only 2010 data from patients who had coverage the whole year

DROP TABLE ALL_CLAIMS;

CREATE TABLE ALL_CLAIMS AS (

WITH ip AS(
SELECT
a.desynpuf_id
,bene_sex_ident_cd as sex
,bene_race_cd as race
,EXTRACT(YEAR FROM age('2010-12-31',bene_birth_dt)) as age
,bene_esrd_ind as end_stg_renal_disease
,sp_alzhdmta as alzheimer
,sp_chf as heart_failure
,sp_copd as chron_obstructive_pulm_disease
,sp_chrnkidn as chron_kidney_disease
,sp_cncr as cancer
,sp_depressn as depression
,sp_diabetes as diabetes
,sp_ischmcht as ischemic_heart_disease
,sp_osteoprs as osteoporosis
,sp_ra_oa as rheumatoid_arthritis
,sp_strketia as stroke
,clm_id
,'Inpatient' as claim_type
,clm_from_dt
,clm_thru_dt
,prvdr_num
,c.state_name as state
,d.dgns_desc as diagnosis_1
,e.dgns_desc as diagnosis_2
,f.prcdr_desc as procedure_1
,g.prcdr_desc as procedure_2
,clm_pmt_amt
FROM inpatient_claims a
LEFT JOIN beneficiary_summary b ON a.desynpuf_id = b.desynpuf_id
LEFT JOIN state_codes c ON b.sp_state_code = c.state_code
LEFT JOIN dgns_codes d ON a.icd9_dgns_cd_1 = d.dgns_cd 
LEFT JOIN dgns_codes e ON a.icd9_dgns_cd_2 = e.dgns_cd 
LEFT JOIN prcdr_codes f ON a.icd9_prcdr_cd_1 = f.prcdr_cd 
LEFT JOIN prcdr_codes g ON a.icd9_prcdr_cd_2 = g.prcdr_cd 
WHERE clm_from_dt >= '2010-01-01'
AND bene_hi_cvrage_tot_mons = '12'
AND bene_smi_cvrage_tot_mons = '12'
),

op AS (
SELECT
a.desynpuf_id
,bene_sex_ident_cd as sex
,bene_race_cd as race
,EXTRACT(YEAR FROM age('2010-12-31',bene_birth_dt)) as age
,bene_esrd_ind as end_stg_renal_disease
,sp_alzhdmta as alzheimer
,sp_chf as heart_failure
,sp_copd as chron_obstructive_pulm_disease
,sp_chrnkidn as chron_kidney_disease
,sp_cncr as cancer
,sp_depressn as depression
,sp_diabetes as diabetes
,sp_ischmcht as ischemic_heart_disease
,sp_osteoprs as osteoporosis
,sp_ra_oa as rheumatoid_arthritis
,sp_strketia as stroke
,clm_id
,'Outpatient' as claim_type
,clm_from_dt
,clm_thru_dt
,prvdr_num
,c.state_name as state
,d.dgns_desc as diagnosis_1
,e.dgns_desc as diagnosis_2
,f.prcdr_desc as procedure_1
,g.prcdr_desc as procedure_2
,clm_pmt_amt
FROM outpatient_claims a
LEFT JOIN beneficiary_summary b ON a.desynpuf_id = b.desynpuf_id
LEFT JOIN state_codes c ON b.sp_state_code = c.state_code
LEFT JOIN dgns_codes d ON a.icd9_dgns_cd_1 = d.dgns_cd
LEFT JOIN dgns_codes e ON a.icd9_dgns_cd_2 = e.dgns_cd
LEFT JOIN prcdr_codes f ON a.icd9_prcdr_cd_1 = f.prcdr_cd
LEFT JOIN prcdr_codes g ON a.icd9_prcdr_cd_2 = g.prcdr_cd
WHERE clm_from_dt >= '2010-01-01'
AND bene_hi_cvrage_tot_mons = '12'
AND bene_smi_cvrage_tot_mons = '12'
)
SELECT * FROM ip
UNION ALL
SELECT * FROM op
);

ALTER TABLE all_claims
ALTER COLUMN age TYPE integer;