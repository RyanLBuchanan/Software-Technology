--1.	Provide a list of students that have enrolled in a course that allowed them an opportunity to drop a lowest score.
--SELECT last_name, first_name
--	FROM student
--WHERE student_id IN
--	(SELECT e.student_id
--		FROM enrollment e, section s
--	WHERE e.section_id = s.section_id
--		AND e.section_id IN
--			(SELECT section_id
--				FROM grade_type_weight
--			WHERE drop_lowest = 'Y'))
--ORDER BY last_name;


--2.	List the names and phone numbers of instructors who teach students that live in same zipcode as the instructor.
--SELECT i.last_name, i.first_name, i.phone
--	FROM instructor i, student s, section t, enrollment e 
--WHERE i.zip = s.zip
--	AND i.instructor_id = t.instructor_id
--	AND s.student_id = e.student_id
--	AND e.section_id = t.section_id
--ORDER BY i.last_name;


--3.	Provide a list of names and cities of students and instructors that live in zipcode 10025. Identify each person's role as either "Student" or "Instructor". Sort the list by role, last name and first name.
--(SELECT s.last_name AS "Last Name", s.first_name AS "First Name", 'Student' AS ROLE, z.city
--	FROM student s, zipcode z
--WHERE s.zip = z.zip
--	AND z.zip = 10025)
--UNION
--(SELECT i.last_name AS "Last Name", i.first_name AS "First Name", 'Instructor' AS ROLE, z.city
--	FROM instructor i, zipcode z
--WHERE i.zip = z.zip
--	AND z.zip = 10025)
--ORDER BY ROLE, "Last Name", "First Name";


--4.	Create a query that lists location, number of sections taught in that location and number of students enrolled in courses at that location. Sort by location.
--SELECT location, COUNT(COURSES) AS COURSES, COUNT(STUDENTS) AS STUDENTS
--	FROM 
--		((SELECT location, COUNT(course_no) AS COURSES, NULL AS STUDENTS 
--			FROM section
--		GROUP BY location, course_no)
--	UNION ALL
--		(SELECT s.location AS location, NULL AS COURSES, 
--			COUNT(e.section_id) AS STUDENTS
--			FROM enrollment e, section s	
--		WHERE e.section_id = s.section_id
--		GROUP BY s.location, e.section_id))
--GROUP BY location
--ORDER BY location;


--5.	Create a query that shows all of the individual grades for student 112 in section 95 and also the average of those grades. The individual grades should come first with the average at the bottom. List the grade type code and numeric grade. The average row should have a caption of, "Average for student 112".
SELECT grade_type_code AS "Event Graded", numeric_grade AS "Grade"
	FROM grade
WHERE student_id = 112
	AND section_id = 95
UNION ALL 
SELECT 'Average Grade: Student #112', ROUND(AVG(numeric_grade), 1)
	FROM grade
WHERE student_id = 112
	AND section_id = 95;