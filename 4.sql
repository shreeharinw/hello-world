declare 
cursor cur is select * from branch;
rows cur%rowtype;
counter number;
begin
open cur;
loop
fetch cur into rows;
exit when cur%notfound;
insert into branch1 values (rows.code,rows.name,rows.assets);
end loop;
counter := cur%rowcount;
close cur;
dbms_output.put_line(counter||' rows inserted into the table copy_part1 ');
end;
/

