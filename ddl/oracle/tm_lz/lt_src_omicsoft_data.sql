--
-- Type: TABLE; Owner: TM_LZ; Name: LT_SRC_OMICSOFT_DATA
--
 CREATE TABLE "TM_LZ"."LT_SRC_OMICSOFT_DATA" 
  (	"ID" VARCHAR2(1000 BYTE), 
"CONTRAST_NAME" VARCHAR2(1000 BYTE), 
"PROBE_ID" VARCHAR2(1000 BYTE), 
"RAW_P_VALUE" VARCHAR2(200 BYTE), 
"ADJ_P_VALUE" VARCHAR2(200 BYTE), 
"ESTIMATE" NUMBER(18,5), 
"FOLD_CHANGE" NUMBER(18,5), 
"MAX_L_S_MEAN" NUMBER(18,5), 
"BIO_ASSAY_ANALYSIS_ID" NUMBER(18,0), 
"MEAN_FOLD_CHANGE" NUMBER(18,4), 
"STD_DEV_FOLD_CHANGE" NUMBER(18,4), 
"TEA_NORMAL_PVALUE" NUMBER(18,4), 
"ETL_ID" VARCHAR2(200 BYTE)
  ) 
 TABLESPACE "TRANSMART" ;

