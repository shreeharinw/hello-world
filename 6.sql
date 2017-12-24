declare 
num number;
fact1 number;
procedure factorial (num in number,fact1 out number) is 
i number;
begin
fact1:=1;
for i in 1..num
loop
fact1:=fact1*i;
end loop;
end;

begin 
num:=&n;
factorial(num,fact1);
dbms_output.put_line ('factorial is '|| fact1);
end;
/


