CREATE TABLE student_delete_log (
    roll_no NUMBER,
    deleted_on DATE
);


CREATE OR REPLACE TRIGGER trg_log_delete
AFTER DELETE ON studee
FOR EACH ROW
BEGIN
    INSERT INTO student_delete_log values(:OLD.roll_no, SYSDATE);
END;
/