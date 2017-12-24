declare
a number;
b number;
c number;
i number;
n number;
begin
a:=0;
b:=1;
n:=8;
dbms_output.put_line(a);
dbms_output.put_line(b);
for i in 2..n 
loop
c:=a+b;
a:=b;
b:=c;
dbms_output.put_line(c);
end loop;
end;
/
