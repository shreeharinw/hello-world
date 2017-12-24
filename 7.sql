declare 
a number;
sum1 number;
n number;
k number;
begin
n:=&n;
k:=n;
sum1:=0;
while n>0
loop
a:=mod(n,10);
sum1:=(sum1 * 10) + a;
n:=trunc(n/10);
end loop;

if sum1=k
then
dbms_output.put_line('palindrome');
else
dbms_output.put_line(' not palindrome');
end if; 
end;
/


