/* CREATE COMMAND*/
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

-- DROP TABLE
DROP TABLE Employee;

-- Renaming a table.
ALTER TABLE table_name
RENAME TO new_table_name;
-- Changing a column name.
ALTER TABLE table_name
RENAME COLUMN old_column_name TO new_column_name;
-- Adding or deleting columns.
ALTER TABLE table_name
ADD column_name datatype;
ALTER TABLE table_name DROP COLUMN column_name;
-- Modifying the data type of a column.
ALTER TABLE table_name
MODIFY COLUMN column_name new_datatype;

-- TRUNCATE PRESERVES STRUCTURES:
TRUNCATE TABLE  table_name;