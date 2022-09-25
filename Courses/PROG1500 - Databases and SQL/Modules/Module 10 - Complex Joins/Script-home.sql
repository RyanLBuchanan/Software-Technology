--1.	Create an alphabetic listing of all instructors and the number of sections that they have taught.  The number of sections can be null for instructors that have not taught any sections.
--SELECT i.last_name, i.first_name, COUNT(s.section_id) AS "Total Sections Taught"
--	FROM instructor i
--FULL JOIN section s
--	ON i.instructor_id = s.instructor_id
--GROUP BY i.last_name, i.first_name
--ORDER BY "Total Sections Taught" DESC;


--2.	List the course number and description of courses wherein students have received grades for every one of the possible grade types. Order by Course Number
--SELECT DISTINCT c.course_no, c.description
--	FROM course c
--LEFT JOIN section s
--	ON c.course_no = s.course_no
--WHERE s.section_id IN 
--	(SELECT g.section_id
--		FROM grade g
--	LEFT JOIN section s
--		ON g.section_id = s.section_id
--	WHERE g.grade_type_code = 'FI'
--	UNION 
--	SELECT g.section_id
--		FROM grade g
--	LEFT JOIN section s
--		ON g.section_id = s.section_id
--	WHERE g.grade_type_code = 'HM'
--	UNION 
--	SELECT g.section_id
--		FROM grade g
--	LEFT JOIN section s
--		ON g.section_id = s.section_id
--	WHERE g.grade_type_code = 'MI'
--	UNION 
--	SELECT g.section_id
--		FROM grade g
--	LEFT JOIN section s
--		ON g.section_id = s.section_id
--	WHERE g.grade_type_code = 'PA'
--	UNION 
--	SELECT g.section_id
--		FROM grade g
--	LEFT JOIN section s
--		ON g.section_id = s.section_id
--	WHERE g.grade_type_code = 'PJ'
--	UNION 
--	SELECT g.section_id
--		FROM grade g
--	LEFT JOIN section s
--		ON g.section_id = s.section_id
--	WHERE g.grade_type_code = 'QZ')
--ORDER BY c.course_no;


--3.	List all of the zip codes in Astoria, NY and the number of students from each of the zip codes.  Sort by zip code. Show 0 for zip codes with no students enrolled.
--SELECT z.zip AS "Zip Codes in Astoria, NY", 
--	   COUNT(s.student_id) AS "Total Students from Zip"
--	FROM student s
--FULL JOIN zipcode z
--	ON s.zip = z.zip
--WHERE z.city = 'Astoria' 
--	AND z.state = 'NY'
--GROUP BY z.zip
--ORDER BY z.zip;

--4.	List course number and description all of the Java courses and the total number of enrollments for each course.  Arrange by course number.  Show zero for courses with no students enrolled.
--SELECT c.course_no, c.description,
--	   COUNT(s.course_no) AS "Total Students Enrolled"
--	FROM course c
--FULL JOIN section s
--	ON c.course_no = s.course_no
--FULL JOIN enrollment e
--	ON s.section_id = e.section_id 
--WHERE c.description LIKE '%Java%'
--GROUP BY s.course_no, c.course_no, c.description
--ORDER BY c.course_no;

--5.	List student ID and Name of all of the students in area code 212  along with the number of enrollments each has.  If the students has not enrolled in any courses, display the word “none” in the enrollments column. Alphabetize the list on last name and first name.
--SELECT s.student_id, s.last_name, s.first_name, 
--	(CASE
--		WHEN COUNT(e.section_id) > 0 
--			THEN TO_CHAR(COUNT(e.section_id))
--		ELSE 'none'
--	END) AS "Total Enrollments"
--	FROM student s
--FULL JOIN enrollment E 
--	ON s.student_id = e.student_id
--WHERE s.phone LIKE '212%'
--GROUP BY s.student_id, s.last_name, s.first_name
--ORDER BY s.last_name, s.first_name;
	)



