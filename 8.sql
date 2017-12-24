create or replace trigger tri_employee
before insert or update
on employee1
for each row
declare
	rec varchar(10);
begin
	select to_char(sysdate,'Dy') into rec from dual;
	if rec = 'Thu' OR rec='Sat' then
		dbms_output.put_line(rec);
		raise_application_error(-20343,'NOT ALLowed to enter');
	end if;
end;
/
show error 
insert into employee1 values('17ms17','ram','2','1542');