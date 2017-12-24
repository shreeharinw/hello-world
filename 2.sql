declare 
num number;
begin
update employee1 set salary=salary*1.15 where deptno in 10;
dbms_output.put_line('updated is ' || SQL%ROWCOUNT);
end;
/