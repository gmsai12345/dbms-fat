-- procedure putting and calling calling is EXEC ProcedureName(parameters in their datatypes) this is only procedures
create or replace procedure studi(id stud.SID%TYPE,
name stud.SNAME%TYPE)
AS
begin
insert into stud values(id,name);
end;
/
create or replace procedure studup(id in number,
name in varchar2)
AS
begin
update stud set sname=name where sid=id;
end;
/
-- drop procedure DROP PROCEDURE ProcedureName
Drop Procedure studup;


-- functions
CREATE OR REPLACE FUNCTION FunctionName(
Parameter IN|OUT datatype)
Return return_datatype
 IS|AS
 <Declaration section>
 BEGIN
Body of the Function;
END;
-- example
create or replace function studcount
Return number
IS
 rec number(2) :=0;
BEGIN
 Select count(*) into rec from stud;
 RETURN rec;
END;
/
-- to call the function
BEGIN
 dbms_output.put_line(studcount());
END;
/
