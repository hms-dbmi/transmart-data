--
-- Type: TABLE; Owner: TM_LZ; Name: LT_PROTEIN_ANNOTATION
--
 CREATE TABLE "TM_LZ"."LT_PROTEIN_ANNOTATION" 
  (	"GPL_ID" VARCHAR2(100 BYTE), 
"PEPTIDE" VARCHAR2(200 BYTE), 
"UNIPROT_ID" VARCHAR2(200 BYTE), 
"BIOMARKER_ID" NUMBER, 
"ORGANISM" VARCHAR2(100 BYTE)
  ) 
 TABLESPACE "TRANSMART" ;

