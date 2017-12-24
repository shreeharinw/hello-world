declare
count number;
begin
update account set balance='15000' where ssn in '1';
dbms_output.put_line('no of rows updated -'|| SQL%ROWCOUNT);
end;
/