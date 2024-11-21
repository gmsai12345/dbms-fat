-- insert 
-- in order
INSERT INTO table_name 
VALUES (value1, value2, value); 
-- selected columns alone
INSERT INTO table_name (column1, column2, column3) 
VALUES ( value1, value2, value); 
-- insert multiple rows
INSERT INTO table_name(Column1,Column2,Column3,.......) 
VALUES 
        (Value1, Value2,Value3,.....),
        (Value1, Value2,Value3,.....),
        (Value1, Value2,Value3,.....),
         ............................. ;
-- The syntax for using INSERT INTO SELECT query to insert all data from a table to another table:
INSERT INTO first_table 
SELECT * 
FROM second_table;
--  Copy Specific Columns and Insert 
INSERT INTO first_table(names_of_columns1) 
SELECT names_of_columns2 
FROM second_table; 
-- Copy Specific Rows and Insert 
INSERT INTO table1 
SELECT * FROM table2 
WHERE condition; 
-- Inserting all rows and columns using INSERT INTO SELECT example
INSERT INTO Student 
SELECT * FROM LateralStudent;

--  -- -- -- 
-- UPDATE COMMANDS
-- SYNTAX
UPDATE table_name SET column1 = value1, column2 = value2,… 
WHERE condition;
-- Update Single Column Using UPDATE Statement Example
UPDATE Customer SET CustomerName  
= 'Nitin' WHERE Age = 22;
-- Updating Multiple Columns using UPDATE Statement Example
UPDATE Customer SET CustomerName = 'Satyam', 
Country = 'USA' WHERE CustomerID = 1;
-- Omitting WHERE Clause in UPDATE Statement
-- If we omit the WHERE clause from the update query then all of the rows will get updated.

-- DELETE 
DELETE FROM table_name
WHERE some_condition;
-- Deleting Single Record
DELETE FROM GFG_Employees WHERE NAME = 'Rithvik';  
-- delete multiple records:
DELETE FROM GFG_Employees 
WHERE department = 'Development';
-- delete all 
DELETE * FROM GFG_EMPLOyees; 
