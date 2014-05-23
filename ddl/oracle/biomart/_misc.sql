--
-- Type: SEQUENCE; Owner: BIOMART; Name: SEQ_BIO_DATA_ID
--
CREATE SEQUENCE  "BIOMART"."SEQ_BIO_DATA_ID"  MINVALUE 1 MAXVALUE 999999999999999999999999 INCREMENT BY 1 START WITH 391523268 CACHE 20 NOORDER  NOCYCLE ;
--
-- Type: TRIGGER; Owner: BIOMART; Name: LOGON_TRIGGER
--
  CREATE OR REPLACE TRIGGER "BIOMART"."LOGON_TRIGGER" 
AFTER LOGON ON DATABASE
DECLARE
v_user_identifier varchar2(64);
BEGIN
SELECT SYS_CONTEXT('USERENV', 'OS_USER')
       ||':'||
       SYS_CONTEXT('USERENV', 'IP_ADDRESS')
  INTO v_user_identifier
  FROM dual;
DBMS_SESSION.SET_IDENTIFIER(v_user_identifier);
END;







/
ALTER TRIGGER "BIOMART"."LOGON_TRIGGER" ENABLE;
--
-- Type: SEQUENCE; Owner: BIOMART; Name: SEQ_CLINICAL_TRIAL_DESIGN_ID
--
CREATE SEQUENCE  "BIOMART"."SEQ_CLINICAL_TRIAL_DESIGN_ID"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 24181 CACHE 20 NOORDER  NOCYCLE ;
--
-- Type: SEQUENCE; Owner: BIOMART; Name: HIBERNATE_SEQUENCE
--
CREATE SEQUENCE  "BIOMART"."HIBERNATE_SEQUENCE"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 21270 CACHE 20 NOORDER  NOCYCLE ;
--
-- Type: SEQUENCE; Owner: BIOMART; Name: BIO_ASSAY_DATA_STATS_SEQ
--
CREATE SEQUENCE  "BIOMART"."BIO_ASSAY_DATA_STATS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 34497441 CACHE 20 NOORDER  NOCYCLE ;
