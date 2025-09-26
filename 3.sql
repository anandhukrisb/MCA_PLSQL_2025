CREATE OR REPLACE FUNCTION get_square(p_num IN NUMBER)
RETURN NUMBER
IS
    v_result NUMBER;
BEGIN
    v_result := p_num * p_num;
    RETURN v_result;
END;
/
-- Example usage:
SET SERVEROUTPUT ON;
BEGIN
    DBMS_OUTPUT.PUT_LINE('The square of 9 is: ' || get_square(9));
END;
/