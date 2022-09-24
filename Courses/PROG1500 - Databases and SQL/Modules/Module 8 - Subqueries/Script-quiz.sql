--The NOT EXISTS operator tests for occurrences of nulls.
--TRUE

--Subqueries are used only in SELECT statements.
--FALSE

--The most deeply nested, noncorrelated subquery always executes first.
--TRUE

--The following queries are logically equivalent.

--SELECT 'TURE'
--FROM dual
--WHERE 6 IN (6,9)
--
-- 
--
--SELECT 'TURE'
--FROM dual
--WHERE 6 = ANY (6,9)

--TRUE 

--To perform any <=, <=, >, or < comparison with a subquery returning multiple rows, you need to use either the ANY, SOME, or ALL operator.
--TRUE

--Which of the following queries determines which enrolled students have no grades at all.
--
--SELECT DISTINCT student_id FROM enrollment e WHERE NOT EXISTS (SELECT '*' FROM grade WHERE e.student_id = student_id)

--Write the question for the following query:
--SELECT course_no, description
--  FROM course
-- WHERE course_no IN
--       (SELECT course_no
--          FROM section
--         WHERE location = 'L111')
--    OR prerequisite = 20
--List the course number, prerequisite, and course description of courses with a location of L111 or a prerequisite course number of 20.


--The following SQL statement can be expressed differently. Choose the correct equivalent statement.
--SELECT course_no, prerequisite
--  FROM course
-- WHERE course_no IN
--      (SELECT course_no
--         FROM section
--        WHERE NVL(section_no, 99) > 3)

--SELECT DISTINCT c.course_no, prerequisite FROM course c, section s WHERE c.course_no = s.course_no AND NVL(section_no, 99) > 3
--CORRECT

--SELECT DISTINCT c.course_no, prerequisite FROM course c, section s WHERE c.course_no = s.section_no AND NVL(section_no, 99) > 3
--INCORRECT

--SELECT course_no, prerequisite FROM course WHERE NOT EXISTS (SELECT NULL FROM section WHERE NVL(section_no, 99) > 3)
--INCORRECT
        
--Write the question for the following query:
--SELECT first_name, last_name
--  FROM instructor
-- WHERE zip NOT IN
--       (SELECT zip
--          FROM zipcode)
        
--List the first and last name of the instructors with zip codes that do not exist in the ZIPCODE table. Instructors with NULL values in the zip column do not show in the result.
        
        
--What problem does the following SQL statement solve?

--SELECT student_id, section_id
--	FROM enrollment e
--WHERE NOT EXISTS
--	(SELECT '1'
--		FROM grade g
--	WHERE e.section_id = section_id
--		AND e.student_id = student_id)
        
--Determine which students are not enrolled.


--Subqueries can return multiple rows and columns.
--FALSE