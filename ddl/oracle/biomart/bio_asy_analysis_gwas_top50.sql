--
-- Type: TABLE; Owner: BIOMART; Name: BIO_ASY_ANALYSIS_GWAS_TOP50
--
 CREATE TABLE "BIOMART"."BIO_ASY_ANALYSIS_GWAS_TOP50" 
  (	"BIO_ASSAY_ANALYSIS_ID" NUMBER, 
"ANALYSIS" VARCHAR2(500 BYTE), 
"CHROM" VARCHAR2(4 BYTE), 
"POS" NUMBER(10,0), 
"RSGENE" VARCHAR2(200 BYTE), 
"RSID" VARCHAR2(50 BYTE), 
"PVALUE" FLOAT(126), 
"LOGPVALUE" FLOAT(126), 
"EXTDATA" VARCHAR2(4000 BYTE), 
"RNUM" NUMBER, 
"INTRONEXON" VARCHAR2(10 BYTE), 
"REGULOME" VARCHAR2(10 BYTE), 
"RECOMBINATIONRATE" NUMBER(18,6)
  ) 
 TABLESPACE "TRANSMART" ;

