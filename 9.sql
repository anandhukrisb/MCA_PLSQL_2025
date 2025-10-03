CREATE OR REPLACE TRIGGER trg_no_mark_decrease
BEFORE UPDATE OF marks ON studee
FOR EACH ROW
BEGIN
    IF :NEW.marks < :OLD.marks THEN
        RAISE_APPLICATION_ERROR(-20002, 'Marks cannot be decreased');
    END IF;
END;
/