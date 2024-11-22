-- hello world
DECLARE 
   message  varchar2(20):= 'Hello, World!'; 
BEGIN 
   dbms_output.put_line(message); 
END; 
/ 
-- syntax
DECLARE 
   -- variable declaration 
   message  varchar2(20):= 'Hello, World!'; 
BEGIN 
   /* 
   *  PL/SQL executable statement(s) 
   */ 
   dbms_output.put_line(message); 
END; 
/
-- data types
DECLARE 
   num1 INTEGER; 
   num2 REAL; 
   num3 DOUBLE PRECISION; 
   SUBTYPE name IS char(20); 
   SUBTYPE message IS varchar2(100); 
   salutation name; 
   greetings message; 
BEGIN 
   null; 
END; 
/ 
-- variable
DECLARE 
   a integer := 10; 
   b integer := 20; 
   c integer; 
   f real; 
BEGIN 
   c := a + b; 
   dbms_output.put_line('Value of c: ' || c); 
   f := 70.0/3.0; 
   dbms_output.put_line('Value of f: ' || f); 
END; 
/  
-- operators study in docs

-- if
DECLARE 
   a number(2) := 10; 
BEGIN 
   a:= 10; 
  -- check the boolean condition using if statement  
   IF( a < 20 ) THEN 
      -- if condition is true then print the following   
      dbms_output.put_line('a is less than 20 ' ); 
   END IF; 
   dbms_output.put_line('value of a is : ' || a); 
END; 
/
-- if else
IF color = red THEN 
  dbms_output.put_line('You have chosen a red car') 
ELSE 
  dbms_output.put_line('Please choose a color for your car'); 
END IF;

-- nested if else
DECLARE 
   a number(3) := 100; 
BEGIN 
   IF ( a = 10 ) THEN 
      dbms_output.put_line('Value of a is 10' ); 
   ELSIF ( a = 20 ) THEN 
      dbms_output.put_line('Value of a is 20' ); 
   ELSIF ( a = 30 ) THEN 
      dbms_output.put_line('Value of a is 30' ); 
   ELSE 
       dbms_output.put_line('None of the values is matching'); 
   END IF; 
   dbms_output.put_line('Exact value of a is: '|| a );  
END; 
/ 

-- loops 
-- simple loop
DECLARE 
   x number := 10; 
BEGIN 
   LOOP 
      dbms_output.put_line(x); 
      x := x + 10; 
      IF x > 50 THEN 
         exit; 
      END IF; 
   END LOOP; 
   -- after exit, control resumes here  
   dbms_output.put_line('After Exit x is: ' || x); 
END; 
/
-- while loop
DECLARE 
   a number(2) := 10; 
BEGIN 
   WHILE a < 20 LOOP 
      dbms_output.put_line('value of a: ' || a); 
      a := a + 1; 
   END LOOP; 
END; 
/ 
-- for loop
DECLARE 
   a number(2); 
BEGIN 
   FOR a in 10 .. 20 LOOP 
      dbms_output.put_line('value of a: ' || a); 
  END LOOP; 
END; 
/
-- reverse for loop
DECLARE 
   a number(2) ; 
BEGIN 
   FOR a IN REVERSE 10 .. 20 LOOP 
      dbms_output.put_line('value of a: ' || a); 
   END LOOP; 
END; 
/