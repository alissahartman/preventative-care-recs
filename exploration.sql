---DATA EXPLORATION

--Check for duplicates
SELECT desynpuf_id, COUNT(*)
FROM beneficiary_summary
GROUP BY desynpuf_id
HAVING COUNT(*) >1
;

--Claim counts
SELECT clm_id, COUNT(*)
-- FROM inpatient_claims
FROM outpatient_claims
GROUP BY clm_id
HAVING COUNT(*) >1
;

SELECT *
--FROM inpatient_claims
FROM outpatient_claims
WHERE clm_id = '684012269374659'
;
--Why two rows for each of these claims? Claims can have 2 segments
--Effective with Version 'I', the system generated number used in conjunction 
--with the NCH daily process date to keep records/segments belonging to a specific 
--claim together. This field was added to ensure that records/ segments that come 
--in on the same batch with the same identifying information in the link group are 
--not mixed with each other.


------------------------------------------------------------------------------
--AGGREGATIONS (2010 data)

SELECT 
ROUND(SUM(clm_pmt_amt)) as total_clm_pmt
,COUNT(DISTINCT clm_id) as clm_count
,ROUND(SUM(clm_pmt_amt)/COUNT(DISTINCT clm_id)) as pmt_per_clm
,ROUND(MIN(clm_pmt_amt)) as min_clm_pmt
,ROUND(MAX(clm_pmt_amt)) as max_clm_pmt
-- FROM inpatient_claims
FROM outpatient_claims
WHERE clm_from_dt >= '2010-01-01'
	AND clm_from_dt <= '2010-12-31'
;

--Inpatient Claims (2010)
--Total Payment Amount: $132,977,110
--Claim Count: 13,632
--Average Payment per Claim: $9,755
--Minimum Payment Amount: -$4,000
--Maximum Payment Amount: $57,000

--Outpatient Claims (2010)
--Total Payment Amount: $47,698,350
--Claim Count: 173,083
--Average Payment per Claim: $276
--Minimum Payment Amount: -$100
--Maximum Payment Amount: $3,300


------------------------------------------------------------------------------
--MEMBER INFO

SELECT
-- CASE 
-- 	WHEN bene_sex_ident_cd = '1' THEN 'Male'
-- 	WHEN bene_sex_ident_cd = '2' THEN 'Female'
-- 	ELSE '0' END as sex
CASE 
	WHEN bene_race_cd = '1' THEN 'White'
	WHEN bene_race_cd = '2' THEN 'Black'
	WHEN bene_race_cd = '3' THEN 'Others'
	WHEN bene_race_cd = '5' THEN 'Hispanic'
	ELSE '0' END as race
,COUNT(DISTINCT desynpuf_id)
FROM beneficiary_summary
GROUP BY 1--, 2
;

--Total Members: 112,811

--Female: 62,568
--Male: 50,243

--White: 93,433
--Black: 11,947
--Hispanic: 2,590
--Others: 4,841


------------------------------------------------------------------------------
--DIAGNOSES

SELECT a.icd9_dgns_cd_1, b.dgns_desc, COUNT(DISTINCT a.clm_id)
FROM outpatient_claims a
-- FROM inpatient_claims a
LEFT JOIN dgns_codes b ON a.icd9_dgns_cd_1 = b.dgns_cd
GROUP BY 1,2
ORDER BY 3 DESC
LIMIT 100
;