-- sample 
SELECT SUM(COST) FROM RESOURCES WHERE PROJECT_ID = 
(SELECT PROJECT_ID FROM PROJECTS WHERE BUDGET = (SELECT MAX(BUDGET) FROM PROJECTS));
-- format
SELECT column_name
FROM table_name
WHERE column_name expression operator 
    (SELECT column_name FROM table_name WHERE ...);

-- ex
SELECT NAME, LOCATION, PHONE_NUMBER 
FROM DATABASE 
WHERE ROLL_NO IN (
SELECT ROLL_NO FROM STUDENT WHERE SECTION='A'
);
-- delete
DELETE FROM Student2 
WHERE ROLL_NO IN (SELECT ROLL_NO 
                  FROM Student1 
                  WHERE LOCATION = 'chennai');

--update
UPDATE Student2 
SET NAME='geeks' 
WHERE LOCATION IN (SELECT LOCATION 
                   FROM Student1 
                   WHERE NAME IN ('Raju', 'Ravi'));