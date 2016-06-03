--
-- Type: TABLE; Owner: BIOMART; Name: BIO_DATA_TAXONOMY
--
 CREATE TABLE "BIOMART"."BIO_DATA_TAXONOMY" 
  (	"BIO_TAXONOMY_ID" NUMBER(18,0) NOT NULL ENABLE, 
"BIO_DATA_ID" NUMBER(18,0) NOT NULL ENABLE, 
"ETL_SOURCE" VARCHAR2(100 BYTE)
  ) 
 TABLESPACE "TRANSMART" ;

--
-- Type: REF_CONSTRAINT; Owner: BIOMART; Name: BIO_TAXON_FK
--
ALTER TABLE "BIOMART"."BIO_DATA_TAXONOMY" ADD CONSTRAINT "BIO_TAXON_FK" FOREIGN KEY ("BIO_TAXONOMY_ID")
 REFERENCES "BIOMART"."BIO_TAXONOMY" ("BIO_TAXONOMY_ID") ENABLE;

