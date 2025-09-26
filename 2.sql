declare 
    var_rows number;
begin 
    update stu set mark = 80 where mark > 60;
    if sql%found then
        var_rows:=sql%rowcount;
        dbms_output.PUT_LINE('The mark updated ' || var_rows || ' student was updated.');
    end if;
end;
/