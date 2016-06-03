--
-- Type: TABLE; Owner: TM_LZ; Name: RWG_COHORTS
--
 CREATE TABLE "TM_LZ"."RWG_COHORTS" 
  (	"STUDY_ID" VARCHAR2(500 BYTE), 
"COHORT_ID" VARCHAR2(500 BYTE), 
"DISEASE" VARCHAR2(500 BYTE), 
"SAMPLE_TYPE" VARCHAR2(500 BYTE), 
"TREATMENT" VARCHAR2(500 BYTE), 
"ORGANISM" VARCHAR2(500 BYTE), 
"PATHOLOGY" VARCHAR2(500 BYTE), 
"COHORT_TITLE" VARCHAR2(500 BYTE), 
"SHORT_DESC" VARCHAR2(500 BYTE), 
"LONG_DESC" VARCHAR2(500 BYTE), 
"IMPORT_DATE" TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE
  ) 
 TABLESPACE "TRANSMART" ;

