-- min also can use where clause in this
SELECT MIN(Price)
FROM Products;
-- max
SELECT MAX(Price)
FROM Products;
-- count
SELECT COUNT(*)
FROM Products;
--count ignore duplicates
SELECT COUNT(DISTINCT Price)
FROM Products;
-- sum
SELECT SUM(Quantity)
FROM OrderDetails;
-- average
SELECT AVG(Price)
FROM Products;
-- like
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';
SELECT * FROM Customers
WHERE Country LIKE 'Spain';
--  The percent sign % represents zero, one, or multiple characters
--  The underscore sign _ represents one, single character
-- in operator
SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');
-- NOT IN
SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');
-- in select/ not in selects
SELECT * FROM Customers
WHERE CustomerID IN (SELECT CustomerID FROM Orders);
-- The SQL BETWEEN Operator
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID IN (1,2,3);
-- not between
SELECT * FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';
-- median
SELECT department_id, MEDIAN(salary)
  FROM employees
-- rank group by pending
-- standard deviation
SELECT STDDEV(salary) "Deviation"
   FROM employees;
