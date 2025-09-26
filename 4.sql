CREATE OR REPLACE FUNCTION format_name(p_name IN VARCHAR)
RETURN VARCHAR2
IS
BEGIN 
    RETURN UPPER(p_name);
END;
/

SET SERVEROUTPUT ON;

BEGIN 
    DBMS_OUTPUT.PUT_LINE('Formated name: ' || format_name('john doe'));
END;
/