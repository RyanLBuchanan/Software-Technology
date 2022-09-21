--Where is the error in the following SELECT statement?
--SELECT course_no, COUNT(*)
--FROM section
--GROUP BY course_no;
--There is no error

--Aggregate functions always return a single result for a group of values.
--True

--The following query is invalid.
--SELECT SYSDATE, 'HELLO', student_id, COUNT(*)
--	FROM enrollment
--GROUP BY student_id
--False

--The following query is invalid.
--SELECT AVG(COALESCE(cost, 0))
--	FROM course
--False

--Aggregate functions usually ignore NULL values.
--True

--WHERE statements can be used with aggregate functions.
--True

--You can combine DISTINCT and GROUP BY clause in the same SELECT statement.
--False

--An aggregate function can be used in a HAVING clause.
--True

--The MIN and MAX functions work only on the NUMBER data type.
--False

--There is an error in the following SELECT statement.
--SELECT COUNT(student_id)
--FROM enrollment
--WHERE COUNT(student_id) > 1
--True