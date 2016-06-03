--
-- Type: TABLE; Owner: TM_WZ; Name: WT_SUBJECT_RBM_CALCS
--
 CREATE TABLE "TM_WZ"."WT_SUBJECT_RBM_CALCS" 
  (	"TRIAL_NAME" VARCHAR2(50 BYTE), 
"PROBESET_ID" VARCHAR2(1000 BYTE), 
"MEAN_INTENSITY" NUMBER, 
"MEDIAN_INTENSITY" NUMBER, 
"STDDEV_INTENSITY" NUMBER
  ) 
 TABLESPACE "TRANSMART" ;

--
-- Type: INDEX; Owner: TM_WZ; Name: WT_SUBJECT_RBM_CALCS_I1
--
CREATE INDEX "TM_WZ"."WT_SUBJECT_RBM_CALCS_I1" ON "TM_WZ"."WT_SUBJECT_RBM_CALCS" ("TRIAL_NAME", "PROBESET_ID")
TABLESPACE "INDX" ;

