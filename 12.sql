CREATE OR REPLACE VIEW salary_view AS
SELECT emp_id, emp_name, emp_salary FROM employees;

BEGIN
    UPDATE salary_view
    SET salary = salary + 2000
    WHERE emp_id = 1;
    DBMS_OUTPUT.PUT_LINE('Salary updated.');
END;
/

SELECT * FROM salary_view;