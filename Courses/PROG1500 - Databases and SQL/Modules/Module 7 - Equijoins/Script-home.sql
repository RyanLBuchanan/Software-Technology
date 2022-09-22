--1.  List the course number, description and cost for all courses taught by Charles Lowry.
--Arrange the list in order of course number.
--SELECT c.course_no, c.description, c.cost, 
--	   i.first_name||' '||i.last_name AS "Instructor Name"
--	FROM course c, instructor i, section s
--WHERE c.course_no = s.course_no 
--	AND s.instructor_id = i.instructor_id
--	AND i.first_name = 'Charles' 
--	AND i.last_name = 'Lowry'
--ORDER BY c.course_no;

--2.	List the full name and phone number for students that live in Newark, NJ.
--SELECT s.first_name||' '||s.last_name AS "Student Name", 
--	   s.phone, z.city||', '||z.state AS "City, State"
--	FROM student s, zipcode z
--WHERE s.zip = z.zip
--	AND z.city = 'Newark'
--ORDER BY s.last_name;

--3.	Provide a listing of courses that include projects as a part of their grade.
--SELECT s.course_no
--	FROM grade g, section s
--WHERE g.section_id = s.section_id
--	AND g.grade_type_code = 'PJ'
--GROUP BY s.course_no
--ORDER BY s.course_no;

--4.	List the grade type code, description and number per section of all grades in course 144. Arrange by description.
--SELECT g.grade_type_code, t.description, 
--	COUNT(s.section_id) "Number per Section"
--	FROM grade g, grade_type t, section s
--WHERE g.grade_type_code = t.grade_type_code
--	AND g.section_id = s.section_id
--	AND s.course_no = 144
--GROUP BY g.grade_type_code, t.description
--ORDER BY t.description;

--5.	Provide a list of students (student ID and name) that have an overall grade average of 89 or higher.
--      The name should be one column, last name then first and sorted on last name plus first name.
--SELECT s.student_id, CONCAT(CONCAT(s.last_name, ', '), s.first_name) AS "Student Name",
--       ROUND(AVG(g.numeric_grade), 1) AS "Overall Grade Average"
--	FROM student s, grade g
--WHERE s.student_id = g.student_id
--GROUP BY s.student_id, s.last_name, s.first_name
--HAVING AVG(g.numeric_grade) > 88
--ORDER BY s.last_name, s.first_name;

--6.	List the course number and number of students enrolled in courses that don’t have a prerequisite. Sort the list by course number.
--SELECT c.course_no, COUNT(e.student_id) AS "Total Student Enrolled"
--	FROM course c, enrollment e, section s
--WHERE s.course_no = c.course_no
--	AND s.section_id = e.section_id
--	AND c.prerequisite IS NULL
--GROUP BY c.course_no
--ORDER BY c.course_no;

--7.	List the names and address (including city and state) for all faculty who have taught less than 10 courses.
--SELECT i.first_name, i.last_name, 
--	   i.street_address, z.city, z.state, z.zip,
--	   COUNT(s.course_no)
--	FROM instructor i, section s, zipcode z
--WHERE i.instructor_id = s.instructor_id
--	AND i.zip = z.zip
--GROUP BY i.first_name, i.last_name, 
--	   i.street_address, z.city, z.state, z.zip
--HAVING COUNT(s.course_no) < 10;

--8.	List the single highest grade on the final exam that was given to a student in course 145.
--SELECT MAX(g.numeric_grade) AS "Class High Score"
--	FROM grade g, grade_type t, section s
--WHERE g.grade_type_code = t.grade_type_code
--	  AND g.section_id = s.section_id
--	  AND t.description = 'Final'
--	  AND s.course_no = 145;

--9.	For all 200 level courses (200-299), list the course number, prerequisite course number and prerequisite course description. Sort by course number.
--SELECT c1.course_no, c1.prerequisite AS "Prerequisite Course #", 
--	   c2.description AS "Prerequisite Description"
--	FROM course c1 JOIN course c2
--		ON c1.prerequisite = c2.course_no
--WHERE (c1.course_no BETWEEN 200 AND 299)
--	AND (c1.prerequisite IS NOT NULL)
--ORDER BY c1.course_no;

--10.	Provide an alphabetic list of students (full name and phone number) from Flushing, NY who enrolled prior to 10:20am on February 2, 2007.
SELECT DISTINCT(CONCAT(CONCAT(s.first_name, ' '), s.last_name)) AS "Student Name",
	   s.phone
	FROM student s, zipcode z, enrollment e
WHERE (s.zip = z.zip) 
	AND (z.city = 'Flushing')
	AND (z.state = 'NY')
	AND (e.enroll_date <= TO_DATE('02-FEB-2007 10:20:00', 'dd-mon-yyyy HH24:MI:SS'))
ORDER BY "Student Name";