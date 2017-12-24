declare 
cursor cur is select * from branch;
rows cur%rowtype;
count1 number;
begin
open cur;
loop
fetch cur into rows;
exit when cur%notfound;
end loop;
count1:=0;
insert into branch values('b1','hsr','12122');
count1:=count1+SQL%ROWCOUNT;
insert into branch values('b2','ssi','1252');
count1:=count1+SQL%ROWCOUNT;
insert into branch values('b3','isdi','17852');
count1:=count1+SQL%ROWCOUNT;
dbms_output.put_line(SQL%ROWCOUNT|| ' rows insetred');
close cur;
open cur;
loop
fetch cur into rows;
exit when cur%notfound;
dbms_output.put_line('code '||rows.code||'name '||rows.name||'assets '||rows.assets);
end loop;
close cur;
end;
/
