--
-- Type: TABLE; Owner: BIOMART; Name: BIO_ASSAY
--
 CREATE TABLE "BIOMART"."BIO_ASSAY" 
  (	"BIO_ASSAY_ID" NUMBER(18,0) NOT NULL ENABLE, 
"ETL_ID" NVARCHAR2(100) NOT NULL ENABLE, 
"STUDY" NVARCHAR2(200), 
"PROTOCOL" NVARCHAR2(200), 
"DESCRIPTION" NCLOB, 
"SAMPLE_TYPE" NVARCHAR2(200), 
"EXPERIMENT_ID" NUMBER(18,0) NOT NULL ENABLE, 
"TEST_DATE" DATE, 
"SAMPLE_RECEIVE_DATE" DATE, 
"REQUESTOR" NVARCHAR2(200), 
"BIO_ASSAY_TYPE" NVARCHAR2(200) NOT NULL ENABLE, 
"BIO_ASSAY_PLATFORM_ID" NUMBER(18,0), 
"BIOSOURCE" NVARCHAR2(200), 
"MEASUREMENT_TYPE" NVARCHAR2(200), 
"TECHNOLOGY" NVARCHAR2(200), 
"VENDOR" NVARCHAR2(200), 
"PLATFORM_DESIGN" NVARCHAR2(200), 
"BIOMARKERS_STUDIED" NVARCHAR2(200), 
"BIOMARKERS_TYPE" NVARCHAR2(200), 
 CONSTRAINT "RBMORDERDIM_PK" PRIMARY KEY ("BIO_ASSAY_ID")
 USING INDEX
 TABLESPACE "INDX"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "BIOMART" 
LOB ("DESCRIPTION") STORE AS BASICFILE (
 TABLESPACE "BIOMART" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
 NOCACHE LOGGING ) ;
--
-- Type: REF_CONSTRAINT; Owner: BIOMART; Name: DATASET_EXPERIMENT_FK
--
ALTER TABLE "BIOMART"."BIO_ASSAY" ADD CONSTRAINT "DATASET_EXPERIMENT_FK" FOREIGN KEY ("EXPERIMENT_ID")
 REFERENCES "BIOMART"."BIO_EXPERIMENT" ("BIO_EXPERIMENT_ID") ENABLE;
--
-- Type: REF_CONSTRAINT; Owner: BIOMART; Name: BIO_ASY_ASY_PFM_FK
--
ALTER TABLE "BIOMART"."BIO_ASSAY" ADD CONSTRAINT "BIO_ASY_ASY_PFM_FK" FOREIGN KEY ("BIO_ASSAY_PLATFORM_ID")
 REFERENCES "BIOMART"."BIO_ASSAY_PLATFORM" ("BIO_ASSAY_PLATFORM_ID") ENABLE;
--
-- Type: TRIGGER; Owner: BIOMART; Name: TRG_BIO_ASSAY_ID
--
  CREATE OR REPLACE TRIGGER "BIOMART"."TRG_BIO_ASSAY_ID" before insert on "BIO_ASSAY"    for each row begin     if inserting then       if :NEW."BIO_ASSAY_ID" is null then          select SEQ_BIO_DATA_ID.nextval into :NEW."BIO_ASSAY_ID" from dual;       end if;    end if; end;













/
ALTER TRIGGER "BIOMART"."TRG_BIO_ASSAY_ID" ENABLE;
