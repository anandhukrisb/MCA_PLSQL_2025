DECLARE
    name stu.S_NAME%type;

BEGIN 
    select s_name into name from stu;
    DBMS_OUTPUT.PUT_LINE(name);

END;
/