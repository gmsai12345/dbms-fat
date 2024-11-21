-- JOIN typically combines rows with equal values for the specified columns. Usually, one table contains a primary key,
-- which is a column or columns that uniquely identify rows in the table (the cat_id column in the cat table).
-- The other table has a column or columns that refer to the primary key columns in the first table (the cat_id column in
-- the toy table). Such columns are foreign keys. The JOIN condition is the equality between the primary key columns in
-- one table and columns referring to them in the other table.

-- JOIN
-- JOIN returns all rows that match the ON condition. JOIN is also called INNER JOIN.
SELECT *
FROM toy
JOIN cat
 ON toy.cat_id = cat.cat_id;

-- NATURAL JOIN
-- if the tables have columns with the same name, you can use
-- NATURAL JOIN instead of JOIN.
SELECT *
FROM toy
NATURAL JOIN cat;

-- LEFT JOIN
-- LEFT JOIN returns all rows from the left table with matching rows from the right table. Rows without a match are filled
-- with NULLs. LEFT JOIN is also called LEFT OUTER JOIN
SELECT *
FROM toy
LEFT JOIN cat
 ON toy.cat_id = cat.cat_id;


-- RIGHT JOIN
-- RIGHT JOIN returns all rows from the right table with matching rows from the left table. Rows without a match are
-- filled with NULLs. RIGHT JOIN is also called RIGHT OUTER JOIN.
SELECT *
FROM toy
RIGHT JOIN cat
 ON toy.cat_id = cat.cat_id;


--  FULL JOIN
-- FULL JOIN returns all rows from the left table and all rows from the right table. It fills the non-matching rows with
-- NULLs. FULL JOIN is also called FULL OUTER JOIN.
SELECT *
FROM toy
FULL JOIN cat
 ON toy.cat_id = cat.cat_id;

-- CROSS JOIN
-- CROSS JOIN returns all possible combinations of rows from the left and right tables.
SELECT *
FROM toy
CROSS JOIN cat;

-- COLUMN AND TABLE ALIASES
SELECT
 o.name AS owner_name,
 c.cat_name
FROM cat AS c
JOIN owner AS o
 ON c.owner_id = o.id;

-- SELF JOIN
-- You can join a table to itself, for example, to show a parent-child relationship.
SELECT
 child.cat_name AS child_name,
 mom.cat_name AS mom_name
FROM cat AS child
JOIN cat AS mom
 ON child.mom_id = mom.cat_id;

-- multiple joins ledt inner outer can also come
SELECT
 t.toy_name,
 c.cat_name,
 o.name AS owner_name
FROM toy t
JOIN cat c
 ON t.cat_id = c.cat_id
JOIN owner o
 ON c.owner_id = o.id;

-- join with conditions
SELECT
 cat_name,
 o.name AS owner_name,
 c.age AS cat_age,
 o.age AS owner_age
FROM cat c
JOIN owner o
 ON c.owner_id = o.id
AND c.age < o.age;