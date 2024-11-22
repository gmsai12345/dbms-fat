-- implicit cursor
--  %FOUND
--  %NOTFOUND
--  %ISOPEN
--  %ROWCOUNT
-- example
DECLARE
  countrows NUMBER(2);
BEGIN
  UPDATE student SET total = m1 + m2 + m3;
  IF sql%notfound THEN
    dbms_output.put_line('no students available');
  ELSIF sql%found THEN
    countrows := sql%rowcount;
    dbms_output.put_line('Total No. of Students ' || countrows);
  END IF;
END;
/
-- example
BEGIN
  DELETE FROM student;
  IF sql%notfound THEN
    dbms_output.put_line('no students available');
  ELSIF sql%found THEN
    dbms_output.put_line('Students deleted');
  END IF;
END;
/

SELECT * FROM student; -- cursor gets called automatically

-- explicit cursor
-- To obtain the control over the context area.
--  It is defined in the declaration section of the
-- PL/SQL Block.
--  Cursor is created on a SELECT Statement which
-- returns more than one row.
--  Working with Cursor
--  Declare the cursor to initialize memory
--  Open the cursor for allocating the memory
--  Fetching the cursor for retrieving the data
--  Close the cursor to release the allocated memory

-- Declare the cursor to initialize memory
--  CURSOR cursor_name IS select_statement;
--  Open the cursor for allocating the memory
--  OPEN cursor_name;
--  Fetching the cursor for retrieving the data
--  FETCH cursor_name INTO variable_list;
--  Close the cursor to release the allocated memory
--  Close cursor_name;
-- explicit cursor example
DECLARE
  sname student.name%type;
  srno student.rno%type;
  sdept student.dept%type;
  sm1 student.m1%type;
  sm2 student.m2%type;
  sm3 student.m3%type;
  CURSOR s_student IS
    SELECT name, rno, dept, m1, m2, m3 FROM student;
BEGIN
  OPEN s_student;
  LOOP
    FETCH s_student INTO sname, srno, sdept, sm1, sm2, sm3;
    EXIT WHEN s_student%notfound;
    dbms_output.put_line(sname || srno || sdept || sm1 || sm2 || sm3);
  END LOOP;
  CLOSE s_student;
END;
/
