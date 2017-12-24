declare
cursor cur is select*from customer1;
rows cur%rowtype;
begin
open cur;
loop
fetch cur into rows;
exit when cur%NOTFOUND;
dbms_output.put_line('ssn '||rows.ssn||' name '||rows.name||' place '||rows.place);
end loop;
close cur;
end;
/

