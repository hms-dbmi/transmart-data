--
-- Type: TABLE; Owner: I2B2DEMODATA; Name: QT_PATIENT_SET_COLLECTION
--
 CREATE TABLE "I2B2DEMODATA"."QT_PATIENT_SET_COLLECTION" 
  (	"PATIENT_SET_COLL_ID" NUMBER(10,0), 
"RESULT_INSTANCE_ID" NUMBER(5,0), 
"SET_INDEX" NUMBER(10,0), 
"PATIENT_NUM" NUMBER(10,0)
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "I2B2_DATA" ;
--
-- Type: INDEX; Owner: I2B2DEMODATA; Name: QT_IDX_QPSC_RIID
--
CREATE INDEX "I2B2DEMODATA"."QT_IDX_QPSC_RIID" ON "I2B2DEMODATA"."QT_PATIENT_SET_COLLECTION" ("RESULT_INSTANCE_ID")
TABLESPACE "I2B2_DATA" ;
