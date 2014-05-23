--
-- Type: TABLE; Owner: DEAPP; Name: DE_XTRIAL_CHILD_MAP
--
 CREATE TABLE "DEAPP"."DE_XTRIAL_CHILD_MAP" 
  (	"CONCEPT_CD" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
"PARENT_CD" NUMBER NOT NULL ENABLE, 
"MANUALLY_MAPPED" NUMBER, 
"STUDY_ID" VARCHAR2(50 BYTE), 
 PRIMARY KEY ("CONCEPT_CD")
 USING INDEX
 TABLESPACE "DEAPP"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "DEAPP" ;
--
-- Type: REF_CONSTRAINT; Owner: DEAPP; Name: DEXCM_PARENT_CD_FK
--
ALTER TABLE "DEAPP"."DE_XTRIAL_CHILD_MAP" ADD CONSTRAINT "DEXCM_PARENT_CD_FK" FOREIGN KEY ("PARENT_CD")
 REFERENCES "DEAPP"."DE_XTRIAL_PARENT_NAMES" ("PARENT_CD") ENABLE;
