CREATE TABLE studee_log (
    roll_no NUMBER PRIMARY KEY,
    action_date DATE
);

CREATE OR REPLACE TRIGGER trgg_log_marks 
BEFORE INSERT ON studee
FOR EACH ROW
BEGIN
    INSERT INTO studee_log VALUES (:NEW.roll_no, SYSDATE);
END;
/