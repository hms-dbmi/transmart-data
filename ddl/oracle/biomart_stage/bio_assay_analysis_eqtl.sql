--
-- Type: TABLE; Owner: BIOMART_STAGE; Name: BIO_ASSAY_ANALYSIS_EQTL
--
 CREATE TABLE "BIOMART_STAGE"."BIO_ASSAY_ANALYSIS_EQTL" 
  (	"BIO_ASY_ANALYSIS_EQTL_ID" NUMBER(22,0) NOT NULL ENABLE, 
"BIO_ASSAY_ANALYSIS_ID" NUMBER(22,0) NOT NULL ENABLE, 
"RS_ID" NVARCHAR2(50), 
"GENE" VARCHAR2(50 BYTE), 
"P_VALUE_CHAR" VARCHAR2(100 BYTE), 
"CIS_TRANS" VARCHAR2(10 BYTE), 
"DISTANCE_FROM_GENE" VARCHAR2(10 BYTE), 
"ETL_ID" NUMBER(18,0), 
"EXT_DATA" VARCHAR2(4000 BYTE)
  ) 
 TABLESPACE "TRANSMART" ;

