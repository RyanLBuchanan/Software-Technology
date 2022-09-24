--1.	List the student ID of the student that has enrolled in the most sections of 100 level courses (100 - 199).
--SELECT s.student_id, COUNT(DISTINCT e.section_id) AS "Most Sections Taken"
--	FROM student s, enrollment e
--WHERE (s.student_id = e.student_id)
--	AND (e.section_id BETWEEN 100 AND 199)
--GROUP BY s.student_id
--ORDER BY "Most Sections Taken" DESC;

--SELECT student_id, COUNT(section_id) AS "Most Sections Taken"
--	FROM enrollment
--WHERE section_id BETWEEN 100 AND 199
--HAVING COUNT(student_id) = 
--		(SELECT MAX(COUNT(student_id))
--			FROM enrollment
--		GROUP BY student_id)
--GROUP BY student_id;

--SELECT student_id, section_id
--	FROM enrollment
--ORDER BY student_id, section_id;

--2.	Provide the student_id and name of the student(s) that scored highest on the final exam (FI) in course 230 section 99.
--SELECT s.student_id, s.first_name, s.last_name, t.course_no, t.section_id, 
--	   MAX(g.numeric_grade) AS "Highest Final Exam"
--	FROM student s, grade g, section t
--WHERE s.student_id = g.student_id 
--	AND g.section_id = t.section_id
--	AND g.numeric_grade =
--		(SELECT MAX(numeric_grade)
--			FROM grade
--		WHERE grade_type_code = 'FI')
--	AND g.grade_type_code = 'FI'
--	AND t.section_id = '99'
--	AND t.course_no = '230'
--GROUP BY s.student_id, s.first_name, s.last_name, t.course_no, t.section_id
--ORDER BY s.student_id;

--SELECT STUDENT_ID, FIRST_NAME, LAST_NAME
--FROM STUDENT
--WHERE STUDENT_ID = (
--SELECT STUDENT_ID FROM (
--  SELECT * FROM (
--    SELECT GRADE.STUDENT_ID, GRADE.NUMERIC_GRADE
--    FROM GRADE, SECTION
--    WHERE (GRADE.SECTION_ID = SECTION.SECTION_ID) AND (GRADE.SECTION_ID = 99) AND (SECTION.COURSE_NO = 230) AND (GRADE_TYPE_CODE = 'FI')
--    ORDER BY GRADE.NUMERIC_GRADE DESC
--  ) 
--  WHERE ROWNUM=1
--));

--3.	List the name and phone number of instructors who have never taught a course section.
--SELECT instructor_id, first_name, last_name
--	FROM instructor
--WHERE instructor_id NOT IN 
--	(SELECT instructor_id
--		FROM section)
--ORDER BY instructor_id;

--4.	Generate an alphabetic listing containing the last names and final exam grade (FI) of students who scored above average on the final exam for section 89.
SELECT s.last_name, g.numeric_grade
	FROM student s, grade g
WHERE (s.student_id = 89)
	AND (g.grade_type_code = 'FI')
	AND (g.numeric_grade > 
		(SELECT AVG(numeric_grade)
			FROM grade))
ORDER BY s.last_name;

