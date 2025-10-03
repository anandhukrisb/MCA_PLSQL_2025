SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE print_squares IS
BEGIN
    FOR rec IN (SELECT num FROM numb) LOOP
        DBMS_OUTPUT.PUT_LINE('Number: ' || rec.num || ' - Square: ' || (rec.num * rec.num));
    END LOOP;
END;
/

BEGIN
    print_squares;
END;
/
