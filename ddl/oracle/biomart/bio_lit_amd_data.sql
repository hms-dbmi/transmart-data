--
-- Type: TABLE; Owner: BIOMART; Name: BIO_LIT_AMD_DATA
--
 CREATE TABLE "BIOMART"."BIO_LIT_AMD_DATA" 
  (	"BIO_LIT_AMD_DATA_ID" NUMBER(18,0) NOT NULL ENABLE, 
"BIO_LIT_ALT_DATA_ID" NUMBER(18,0) NOT NULL ENABLE, 
"ETL_ID" NVARCHAR2(50), 
"MOLECULE" NVARCHAR2(50), 
"MOLECULE_TYPE" NVARCHAR2(50), 
"TOTAL_EXP_PERCENT" NVARCHAR2(50), 
"TOTAL_EXP_NUMBER" NVARCHAR2(100), 
"TOTAL_EXP_VALUE" NVARCHAR2(100), 
"TOTAL_EXP_SD" NVARCHAR2(50), 
"TOTAL_EXP_UNIT" NVARCHAR2(50), 
"OVER_EXP_PERCENT" NVARCHAR2(50), 
"OVER_EXP_NUMBER" NVARCHAR2(100), 
"OVER_EXP_VALUE" NVARCHAR2(100), 
"OVER_EXP_SD" NVARCHAR2(50), 
"OVER_EXP_UNIT" NVARCHAR2(50), 
"CO_EXP_PERCENT" NVARCHAR2(50), 
"CO_EXP_NUMBER" NVARCHAR2(100), 
"CO_EXP_VALUE" NVARCHAR2(100), 
"CO_EXP_SD" NVARCHAR2(50), 
"CO_EXP_UNIT" NVARCHAR2(50), 
"MUTATION_TYPE" NVARCHAR2(50), 
"MUTATION_SITES" NVARCHAR2(50), 
"MUTATION_CHANGE" NVARCHAR2(50), 
"MUTATION_PERCENT" NVARCHAR2(50), 
"MUTATION_NUMBER" NVARCHAR2(100), 
"TARGET_EXP_PERCENT" NVARCHAR2(50), 
"TARGET_EXP_NUMBER" NVARCHAR2(100), 
"TARGET_EXP_VALUE" NVARCHAR2(100), 
"TARGET_EXP_SD" NVARCHAR2(50), 
"TARGET_EXP_UNIT" NVARCHAR2(50), 
"TARGET_OVER_EXP_PERCENT" NVARCHAR2(50), 
"TARGET_OVER_EXP_NUMBER" NVARCHAR2(100), 
"TARGET_OVER_EXP_VALUE" NVARCHAR2(100), 
"TARGET_OVER_EXP_SD" NVARCHAR2(50), 
"TARGET_OVER_EXP_UNIT" NVARCHAR2(50), 
"TECHNIQUES" NVARCHAR2(250), 
"DESCRIPTION" NVARCHAR2(1000), 
 CONSTRAINT "BIO_LIT_AMD_DATA_PK" PRIMARY KEY ("BIO_LIT_AMD_DATA_ID")
 USING INDEX
 TABLESPACE "INDX"  ENABLE
  ) 
 TABLESPACE "TRANSMART" ;

--
-- Type: TRIGGER; Owner: BIOMART; Name: TRG_BIO_LIT_AMD_DATA_ID
--
  CREATE OR REPLACE TRIGGER "BIOMART"."TRG_BIO_LIT_AMD_DATA_ID" 
before insert on "BIO_LIT_AMD_DATA"
for each row
begin
     if inserting then
       if :NEW."BIO_LIT_AMD_DATA_ID" is null then
          select SEQ_BIO_DATA_ID.nextval into :NEW."BIO_LIT_AMD_DATA_ID" from dual;
       end if;
    end if; end;







/
ALTER TRIGGER "BIOMART"."TRG_BIO_LIT_AMD_DATA_ID" ENABLE;
 
--
-- Type: REF_CONSTRAINT; Owner: BIOMART; Name: BIO_LIT_AMD_ALT_FK
--
ALTER TABLE "BIOMART"."BIO_LIT_AMD_DATA" ADD CONSTRAINT "BIO_LIT_AMD_ALT_FK" FOREIGN KEY ("BIO_LIT_ALT_DATA_ID")
 REFERENCES "BIOMART"."BIO_LIT_ALT_DATA" ("BIO_LIT_ALT_DATA_ID") ENABLE;

