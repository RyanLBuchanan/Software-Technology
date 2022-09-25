--The UNION and UNION ALL set operators have the opposite effect of each other. 
--FALSE 

--You cannot order the results of a set operation.
--FALSE 

--The following SQL statement executes without an error.

--SELECT TO_CHAR(1)
--FROM dual
--MINUS
--SELECT TO_NUMBER('1')
--FROM dual

--The SELECT statements in an INTERSECT set operation can contain a correlated subquery.
--TRUE

--It is redundant to use DISTINCT in either a MINUS or INTERSECT set operation.
--TRUE

--A DISTINCT must always be used in the top-most SELECT statement of a set operation.
--FALSE

--it is redundant to use DISTINCT in a UNION set operation.
--TRUE 

--The following two SELECT statements are equivalent and return the same rows.
--SELECT student_id
--FROM enrollment
--MINUS
--SELECT student_id
--FROM student

--SELECT student_id
--FROM student
--MINUS
--SELECT student_id
--FROM enrollment
--FALSE

--To obtain a list of last names that students and instructors share, you use the MINUS set operator.
--FALSE

--It is possible to combine data from two tables that do not have a primary key/foreign key relationship into one result using a set operation.
--TRUE 