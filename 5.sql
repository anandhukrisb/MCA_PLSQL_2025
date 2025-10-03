CREATE OR REPLACE FUNCTION get_salary(p_employeeid IN NUMBER)
RETURN NUMBER
IS
    v_salary NUMBER;
BEGIN
    SELECT salary INTO v_salary
    FROM employees
    WHERE employee_id = p_employeeid;  -- fixed here

    RETURN v_salary;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL;
END;
/

SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Salary of employee id 101: ' || get_salary(101));
END;
/
