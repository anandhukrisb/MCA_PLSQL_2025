create table employees (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(100),
)

INSERT INTO employees values(1, 'Alice');
INSERT INTO employees values(2, 'Bob');
COMMIT;

CREATE VIEW emp_view AS
SELECT emp_id, emp_name FROM employees;

CREATE OR REPLACE TRIGGER trg_emp_insert
INSTEAD OF INSERT ON emp_view
FOR EACH ROW

BEGIN
    INSERT INTO employees (emp_id, emp_name) VALUES (:NEW.emp_id, :NEW.emp_name);
END;
/