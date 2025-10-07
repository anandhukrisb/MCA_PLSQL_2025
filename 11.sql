CREATE TABLE employees (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(100),
    dept_id NUMBER,
    emp_salary NUMBER
);

INSERT INTO employees values(1, 'Alice', 10, 60000);
INSERT INTO employees values(2, 'Bob', 20, 55000);
INSERT INTO employees values(3, 'Charlie', 10, 70000);

COMMIT;

CREATE VIEW dept10_view AS
SELECT emp_id, emp_name, emp_salary FROM employees WHERE dept_id = 10;

SET SERVEROUTPUT ON;

BEGIN
    FOR rec IN (SELECT * FROM dept10_view) LOOP
        DBMS_OUTPUT.PUT_LINE(rec.emp_name || ' earns ' || rec.emp_salary);
    END LOOP;
END;
/