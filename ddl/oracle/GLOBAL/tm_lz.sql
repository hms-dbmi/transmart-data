--
-- Type: USER; Name: TM_LZ
--
CREATE USER "TM_LZ" IDENTIFIED BY VALUES 'S:6F9B91291DD92132F98582AF777B6FE0AC75037237D6F3905CA5DE935E3E;61EBD96BB8F1822E'
   DEFAULT TABLESPACE "TRANSMART"
   TEMPORARY TABLESPACE "TEMP";

--
-- Type: SYSTEM_GRANT; Name: TM_LZ
--

--
-- Type: TABLESPACE_QUOTA; Name: TM_LZ
--
  DECLARE 
  TEMP_COUNT NUMBER; 
  SQLSTR VARCHAR2(200); 
BEGIN 
  SQLSTR := 'ALTER USER "DEAPP" QUOTA UNLIMITED ON "TRANSMART"';
  EXECUTE IMMEDIATE SQLSTR;
EXCEPTION 
  WHEN OTHERS THEN
    IF SQLCODE = -30041 THEN 
      SQLSTR := 'SELECT COUNT(*) FROM USER_TABLESPACES 
              WHERE TABLESPACE_NAME = ''TRANSMART'' AND CONTENTS = ''TEMPORARY''';
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
-- Type: ROLE_GRANT; Name: TM_LZ
--
GRANT "CONNECT" TO "TM_LZ";

GRANT "RESOURCE" TO "TM_LZ";


