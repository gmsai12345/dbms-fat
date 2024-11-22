--  Stored Program that are automatically
-- invoked or fired whenever a particular
-- event take place. 

-- syntax
CREATE [OR REPLACE ] TRIGGER trigger_name
{BEFORE | AFTER | INSTEAD OF } - when trigger should be executed
{INSERT [OR] | UPDATE [OR] | DELETE} - DML statements
[OF col_name] - Column name to be updated
ON table_name - Table associated with the trigger
[REFERENCING OLD AS o NEW AS n] - refers Old and New value
[FOR EACH ROW] - row level trigger
WHEN (condition) - condition for rows for which the trigger would fire
DECLARE
 Declaration-statements
BEGIN
 Executable-statements
EXCEPTION
 Exception-handling-statements
END; 

-- example
create or replace trigger STrigger
before insert or update or delete on Student
for each row
When (new.RNO>0)
begin
dbms_output.put_line('Old Name : ||:old.name);
dbms_output.put_line('New Name : ||:new.name);
end;
/
-- example
create or replace trigger STD
before delete on Student
for each row
begin
dbms_output.put_line('Deleted Details :');
dbms_output.put_line ('Deleted Name : '||:old.name);
end;
/