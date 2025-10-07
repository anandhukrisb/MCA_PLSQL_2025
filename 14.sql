CREATE OR REPLACE VIEW emp_read_only AS
SELECT emp_id, emp_name, emp_salary FROM employees WHERE dept_id = 10 WITH READ ONLY;

BEGIN
    UPDATE emp_read_only
    SET emp_salary = 60000 WHERE emp_id = 2;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Cannot update read-only view');
END;
/