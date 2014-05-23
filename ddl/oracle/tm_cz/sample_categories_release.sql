--
-- Type: TABLE; Owner: TM_CZ; Name: SAMPLE_CATEGORIES_RELEASE
--
 CREATE TABLE "TM_CZ"."SAMPLE_CATEGORIES_RELEASE" 
  (	"TRIAL_CD" VARCHAR2(200 BYTE), 
"SITE_CD" VARCHAR2(200 BYTE), 
"SUBJECT_CD" VARCHAR2(200 BYTE), 
"SAMPLE_CD" VARCHAR2(200 BYTE), 
"CATEGORY_CD" VARCHAR2(200 BYTE), 
"CATEGORY_VALUE" VARCHAR2(200 BYTE), 
"RELEASE_STUDY" VARCHAR2(50 BYTE)
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "TRANSMART" ;
