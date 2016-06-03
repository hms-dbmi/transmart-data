--
-- Type: TABLE; Owner: TM_CZ; Name: CONCEPT_DIMENSION_RELEASE
--
 CREATE TABLE "TM_CZ"."CONCEPT_DIMENSION_RELEASE" 
  (	"CONCEPT_CD" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
"CONCEPT_PATH" VARCHAR2(700 BYTE) NOT NULL ENABLE, 
"NAME_CHAR" VARCHAR2(2000 BYTE), 
"CONCEPT_BLOB" CLOB, 
"UPDATE_DATE" DATE, 
"DOWNLOAD_DATE" DATE, 
"IMPORT_DATE" DATE, 
"SOURCESYSTEM_CD" VARCHAR2(50 BYTE), 
"UPLOAD_ID" NUMBER, 
"TABLE_NAME" VARCHAR2(255 BYTE), 
"RELEASE_STUDY" VARCHAR2(50 BYTE)
  ) 
 TABLESPACE "TRANSMART" 
LOB ("CONCEPT_BLOB") STORE AS BASICFILE (
 TABLESPACE "TRANSMART" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
 NOCACHE LOGGING ) ;

