declare
n number;
i  number;
flag number;
begin
n:=&n;
flag:=0;
for i in 2..n/2
loop
	if mod(n,i)=0
	then
		flag:=1;				
		exit;
	end if;
end loop;
if flag=1
then 
dbms_output.put_line('not prime');
else
dbms_output.put_line('prime');
end if;
end;
/
