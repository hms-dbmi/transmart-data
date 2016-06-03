--
-- Type: TABLE; Owner: TM_CZ; Name: CZ_TEST_CATEGORY
--
 CREATE TABLE "TM_CZ"."CZ_TEST_CATEGORY" 
  (	"TEST_CATEGORY_ID" NUMBER(18,0) NOT NULL ENABLE, 
"TEST_CATEGORY" NVARCHAR2(255), 
"TEST_SUB_CATEGORY1" NVARCHAR2(255), 
"TEST_SUB_CATEGORY2" NVARCHAR2(255), 
"PERSON_ID" NUMBER, 
 CONSTRAINT "CZ_TEST_CATEGORY_PK" PRIMARY KEY ("TEST_CATEGORY_ID")
 USING INDEX
 TABLESPACE "TRANSMART"  ENABLE
  ) 
 TABLESPACE "TRANSMART" ;

--
-- Type: REF_CONSTRAINT; Owner: TM_CZ; Name: CZ_TEST_CATEGORY_CZ_PERSO_FK1
--
ALTER TABLE "TM_CZ"."CZ_TEST_CATEGORY" ADD CONSTRAINT "CZ_TEST_CATEGORY_CZ_PERSO_FK1" FOREIGN KEY ("PERSON_ID")
 REFERENCES "TM_CZ"."CZ_PERSON" ("PERSON_ID") ENABLE;

--
-- Type: TRIGGER; Owner: TM_CZ; Name: TRG_CZ_TEST_CATEGORY_ID
--
  CREATE OR REPLACE TRIGGER "TM_CZ"."TRG_CZ_TEST_CATEGORY_ID" 
before insert on "CZ_TEST_CATEGORY"    for each row
begin     if inserting then
if :NEW."TEST_CATEGORY_ID" is null then
select SEQ_CZ.nextval into :NEW."TEST_CATEGORY_ID" from dual;       end if;       end if;   end;

/
ALTER TRIGGER "TM_CZ"."TRG_CZ_TEST_CATEGORY_ID" ENABLE;
 
