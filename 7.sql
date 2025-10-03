CREATE TABLE studee (
    roll_no NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    marks NUMBER
);

CREATE OR REPLACE TRIGGER trgg_check_marks 
BEFORE INSERT ON studee
FOR EACH ROW
BEGIN
    IF :NEW.marks < 35 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Marks must be atleast 35');
    END IF;
END;
/