--
-- Type: TABLE; Owner: FMAPP; Name: FM_DATA_UID
--
 CREATE TABLE "FMAPP"."FM_DATA_UID" 
  (	"FM_DATA_ID" NUMBER(18,0) NOT NULL ENABLE, 
"UNIQUE_ID" NVARCHAR2(300) NOT NULL ENABLE, 
"FM_DATA_TYPE" NVARCHAR2(100) NOT NULL ENABLE, 
 CONSTRAINT "FM_DATA_UID_PK_1" PRIMARY KEY ("FM_DATA_ID")
 USING INDEX
 TABLESPACE "TRANSMART"  ENABLE, 
 CONSTRAINT "FM_DATA_UID_UK_1" UNIQUE ("UNIQUE_ID")
 USING INDEX
 TABLESPACE "TRANSMART"  ENABLE
  ) 
 TABLESPACE "TRANSMART" ;

