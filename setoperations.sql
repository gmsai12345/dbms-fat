-- -- Union
-- To combine the result of two or more SQL
-- SELECT queries
SELECT column_name FROM table1
UNION
SELECT column_name FROM table2;
--union all does not delete duplicate values
SELECT column_name FROM table1
UNION ALL
SELECT column_name FROM table2
-- intersect common rows
SELECT column_name FROM table1
INTERSECT
SELECT column_name FROM table2;

--  Minus
--  Provides the rows which are present in the
-- table1 and not present in table 2
--  No duplicates and it arranges the data in
-- ascending order by default
SELECT column_name FROM table1
MINUS
SELECT column_name FROM table2;
-- reverse can also be done
--  View
--  Virtual table
--  Select columns from one or more tables to
-- form a view
--  It can consist of either all the rows or rows
-- based on certain condition
-- Syntax
CREATE VIEW view_name AS
SELECT column1, column2.....
FROM table_name
WHERE condition; 

create view v1 as select Cid,name from
customer where cid in(select cid from deposit
union select cid from loan);

-- drop view name
DROP VIEW view_name;