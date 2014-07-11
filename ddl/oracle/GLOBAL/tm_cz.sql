--
-- Type: USER; Name: TM_CZ
--
CREATE USER "TM_CZ" IDENTIFIED BY VALUES 'S:75081C84B645CEC6972544D98598A31EC0FC0EE20AD66BBF6A8C71430CA5;5DFF82A621539D10'
   DEFAULT TABLESPACE "TRANSMART"
   TEMPORARY TABLESPACE "TEMP";

--
-- Type: SYSTEM_GRANT; Name: TM_CZ
--
GRANT DROP ANY TABLE TO "TM_CZ";















































































































































GRANT DROP ANY INDEX TO "TM_CZ";


GRANT CREATE ANY INDEX TO "TM_CZ";

































--
-- Type: TABLESPACE_QUOTA; Name: TM_CZ
--
  DECLARE 
  TEMP_COUNT NUMBER; 
  SQLSTR VARCHAR2(200); 
BEGIN 
  SQLSTR := 'ALTER USER "TM_CZ" QUOTA UNLIMITED ON "INDX"';
  EXECUTE IMMEDIATE SQLSTR;
EXCEPTION 
  WHEN OTHERS THEN
    IF SQLCODE = -30041 THEN 
      SQLSTR := 'SELECT COUNT(*) FROM USER_TABLESPACES 
              WHERE TABLESPACE_NAME = ''INDX'' AND CONTENTS = ''TEMPORARY''';
      EXECUTE IMMEDIATE SQLSTR INTO TEMP_COUNT;
      IF TEMP_COUNT = 1 THEN RETURN; 
      ELSE RAISE; 
      END IF;
    ELSE
      RAISE;
    END IF;
END;
/
 
--
-- Type: ROLE_GRANT; Name: TM_CZ
--
GRANT "CONNECT" TO "TM_CZ";

GRANT "RESOURCE" TO "TM_CZ";


