--
-- Type: TABLE; Owner: BIOMART; Name: BIO_DATA_DISEASE
--
 CREATE TABLE "BIOMART"."BIO_DATA_DISEASE" 
  (	"BIO_DATA_ID" NUMBER(18,0) NOT NULL ENABLE, 
"BIO_DISEASE_ID" NUMBER(18,0) NOT NULL ENABLE, 
"ETL_SOURCE" VARCHAR2(100 BYTE), 
 CONSTRAINT "BIO_DATA_DISEASE_PK" PRIMARY KEY ("BIO_DATA_ID", "BIO_DISEASE_ID")
 USING INDEX
 TABLESPACE "INDX"  ENABLE
  ) 
 TABLESPACE "TRANSMART" ;

--
-- Type: REF_CONSTRAINT; Owner: BIOMART; Name: BIO_DF_DISEASE_FK
--
ALTER TABLE "BIOMART"."BIO_DATA_DISEASE" ADD CONSTRAINT "BIO_DF_DISEASE_FK" FOREIGN KEY ("BIO_DISEASE_ID")
 REFERENCES "BIOMART"."BIO_DISEASE" ("BIO_DISEASE_ID") ENABLE;

--
-- Type: INDEX; Owner: BIOMART; Name: BIO_DD_IDX2
--
CREATE INDEX "BIOMART"."BIO_DD_IDX2" ON "BIOMART"."BIO_DATA_DISEASE" ("BIO_DISEASE_ID")
TABLESPACE "INDX" 
PARALLEL 4 ;

--
-- Type: INDEX; Owner: BIOMART; Name: BIO_DT_DIS_DID_IDX
--
CREATE INDEX "BIOMART"."BIO_DT_DIS_DID_IDX" ON "BIOMART"."BIO_DATA_DISEASE" ("BIO_DATA_ID")
TABLESPACE "INDX" 
PARALLEL 4 ;

