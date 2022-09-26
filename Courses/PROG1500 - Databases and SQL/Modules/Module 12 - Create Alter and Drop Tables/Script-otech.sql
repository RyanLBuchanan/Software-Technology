--1.	Insert a new instructor: Mr. John Locke with an ID of 815. His address is 2342 Oceanic Way, Bayonne, NJ, 07002. He doesn't have a phone number.
--SELECT * FROM INSTRUCTOR i
--INSERT INTO instructor (INSTRUCTOR_ID, SALUTATION, FIRST_NAME, LAST_NAME, 
--						STREET_ADDRESS, ZIP, CREATED_BY, CREATED_DATE, 
--						MODIFIED_BY, MODIFIED_DATE)
--VALUES (816, 'Mr.', 'John', 'Locke', '2342 Oceanic Way, Bayonne, NJ', '07002', 
--		'Ryan Buchanan', SYSDATE, 'Ryan Buchanan', SYSDATE);


--2.	Create a new section ID of 48 for Mr. Locke. He'll be teaching section 4 of the Project Management Course (142) beginning on September 22, 2011 at 8:15am in Room L211. The capacity is 15 students.
--SELECT * FROM SECTION 
--ORDER BY SECTION_ID 
--INSERT INTO section (SECTION_ID, COURSE_NO, SECTION_NO, START_DATE_TIME, 
--					LOCATION, INSTRUCTOR_ID, CAPACITY, CREATED_BY, CREATED_DATE, 
--					MODIFIED_BY, MODIFIED_DATE)
--VALUES (49, 142, 5, TO_DATE('2011/09/22 09:15:00', 'yyyy/mm/dd hh24:mi:ss'), 'L211',
--		815, 15, 'Ryan Buchanan', SYSDATE, 'Ryan Buchanan', SYSDATE);

--3.	Enroll students 375, 137, 266 and 382 in the course. Their enrollment date should be the current date. (Use ONE INSERT statement).
--SELECT * FROM ENROLLMENT
--ORDER BY STUDENT_ID
--INSERT ALL
--	INTO ENROLLMENT (STUDENT_ID, SECTION_ID, ENROLL_DATE,  
--					 CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE)
--	VALUES (375, 48, SYSDATE, 'Ryan Buchanan', SYSDATE, 'Ryan Buchanan', SYSDATE)
--	INTO ENROLLMENT (STUDENT_ID, SECTION_ID, ENROLL_DATE,  
--					 CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE)
--	VALUES (137, 48, SYSDATE, 'Ryan Buchanan', SYSDATE, 'Ryan Buchanan', SYSDATE)
--	INTO ENROLLMENT (STUDENT_ID, SECTION_ID, ENROLL_DATE,  
--					 CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE)
--	VALUES (266, 48, SYSDATE, 'Ryan Buchanan', SYSDATE, 'Ryan Buchanan', SYSDATE)
--	INTO ENROLLMENT (STUDENT_ID, SECTION_ID, ENROLL_DATE,  
--					 CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE)
--	VALUES (382, 48, SYSDATE, 'Ryan Buchanan', SYSDATE, 'Ryan Buchanan', SYSDATE)
--SELECT * FROM DUAL;

--4.	Remove the enrollment for student 147 from section 120.
--Note the error. You cannot delete the enrollment record because there are foreign keys in the Grade table that depend on the Enrollment table records, thus creating an integrity constraint violation.
--First remove all grades for student 147, section 120 and then remove remove the enrollment for student 147, section 120.  (Use two DELETE statements).
--DELETE FROM GRADE
--WHERE STUDENT_ID = 147 
--	AND SECTION_ID = 120;
--DELETE FROM ENROLLMENT 
--WHERE STUDENT_ID = 147
--	AND SECTION_ID = 120;

--5.	Use the same procedure to remove the enrollment record for student 180 in section 119.
--DELETE FROM GRADE
--WHERE STUDENT_ID = 180 
--	AND SECTION_ID = 119;
--DELETE FROM ENROLLMENT 
--WHERE STUDENT_ID = 180
--	AND SECTION_ID = 119;

--6.	Change Mr. Locke's (ID 815) phone number to be 4815162342.
--SELECT * FROM INSTRUCTOR
--UPDATE INSTRUCTOR 
--SET PHONE = '4815162342'
--WHERE INSTRUCTOR_ID = 815;

--7.	Change the grade on the first homework (HM) assignment for each student in section 119 to 100.
--UPDATE GRADE 
--SET NUMERIC_GRADE = 100
--WHERE GRADE_TYPE_CODE = 'HM'
--	AND GRADE_CODE_OCCURRENCE = 1
--	AND SECTION_ID = 119;

--8.	Increase the final exam (FI) score for each student in section 119 by 10 percent.
--UPDATE GRADE 
--SET NUMERIC_GRADE = NUMERIC_GRADE * 1.1
--WHERE GRADE_TYPE_CODE = 'FI'
--	AND SECTION_ID = 119;

--9.	For each section of the Project Management course, list the section ID, location and number of students enrolled. Sort by section ID.
--SELECT s.section_id, s.location, COUNT(e.student_id)
--	FROM SECTION s
--JOIN enrollment e
--	ON s.section_id = e.section_id
--WHERE s.course_no IN 
--	(SELECT course_no
--		FROM course
--	WHERE description LIKE '%Project Management%')
--GROUP BY s.section_id, s.location
--ORDER BY s.section_id;

--10.	Provide an alphabetic list of instructor names and phone numbers for instructors that teach the Project Management course.
--SELECT i.last_name, i.first_name, i.phone
--	FROM instructor i
--JOIN section s
--ON i.instructor_id = s.instructor_id
--WHERE s.section_id IN 
--	(SELECT s.section_id
--		FROM SECTION s
--	JOIN course c
--	ON s.course_no = c.course_no	
--	WHERE c.description LIKE '%Project Management%')
--ORDER BY i.last_name;


--11.	Provide a list of students in section 119 along with their average numeric grade. Include the student id, student name and average grade. Format the average to two places.  Sort by student ID.
--SELECT s.student_id, s.last_name, s.first_name, 
--	   ROUND(AVG(g.numeric_grade), 2) AS "GPA"
--	FROM student s, enrollment e, grade g
--WHERE s.student_id = e.student_id 
--	AND e.section_id = g.section_id 
--	AND e.section_id = 119
--GROUP BY s.student_id, s.last_name, s.first_name
--ORDER BY s.student_id;

--12.	Create a query to determine the number of instructors who have taught more than 3 students in a course section taught in Room L211.
--SELECT s.instructor_id
--FROM SECTION s
--JOIN enrollment e
--	ON s.section_id = e.section_id
--WHERE s.location = '211'
--HAVING COUNT(e.student_id) >= 1
--GROUP BY s.instructor_id, e.section_id
--ORDER BY s.instructor_id;



--13.	Create a list of instructors that have taught only the Project Management course (142). List the instructor ID, instructor name (salutation, first name, last name) and phone number.
--SELECT instructor_id, 
--		CONCAT(CONCAT(CONCAT(CONCAT(salutation, ' '), first_name), ' '), last_name) 
--		AS "Instructor", phone
--	FROM instructor
--WHERE instructor_id IN
--	(SELECT s.instructor_id
--		FROM section s
--	JOIN course c
--		ON s.course_no = c.course_no
--	WHERE c.description LIKE '%Project Management%'
--	MINUS
--	SELECT s.instructor_id
--		FROM section s
--	JOIN course c
--		ON s.course_no = c.course_no
--	WHERE c.description NOT LIKE '%Project Management%')
--ORDER BY last_name;

--14.	List student names, section id and course number for students that have not yet received any grades in any section.
--SELECT s.last_name, s.first_name, c.section_id, c.course_no
--	FROM student s, section c
--WHERE s.student_id = c.section_id
--	AND NOT EXISTS 
--	(SELECT '*'
--		FROM grade g
--	WHERE g.student_id = s.student_id)
--GROUP BY s.last_name, s.first_name, c.section_id, c.course_no;

--15.	List each unique section start time and the number of courses (not sections) that have been taught at that time.  Sort by start time.
--SELECT section_no, TO_CHAR(start_date_time, 'MON/DD/YYYY HH:MI') AS "Start Time",
--		COUNT(course_no)
--	FROM section 
--GROUP BY section_no, start_date_time
--ORDER BY section_no, start_date_time;
