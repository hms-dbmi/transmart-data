--
-- Type: TABLE; Owner: SEARCHAPP; Name: PLUGIN
--
 CREATE TABLE "SEARCHAPP"."PLUGIN" 
  (	"PLUGIN_SEQ" NUMBER NOT NULL ENABLE, 
"NAME" VARCHAR2(200 BYTE) NOT NULL ENABLE, 
"PLUGIN_NAME" VARCHAR2(90 BYTE) NOT NULL ENABLE, 
"HAS_MODULES" CHAR(1 BYTE) DEFAULT 'N' NOT NULL ENABLE, 
"HAS_FORM" CHAR(1 BYTE) DEFAULT 'N' NOT NULL ENABLE, 
"DEFAULT_LINK" VARCHAR2(70 BYTE) NOT NULL ENABLE, 
"FORM_LINK" VARCHAR2(70 BYTE), 
"FORM_PAGE" VARCHAR2(100 BYTE), 
"ACTIVE" CHAR(1 BYTE), 
 CONSTRAINT "PLUGIN_PK" PRIMARY KEY ("PLUGIN_SEQ")
 USING INDEX
 TABLESPACE "TRANSMART"  ENABLE
  ) 
 TABLESPACE "TRANSMART" ;

