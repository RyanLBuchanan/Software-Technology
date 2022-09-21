--1.	Create a query that returns the average cost for all courses. Round to two places.
--SELECT ROUND(AVG(cost), 2) 
--	FROM COURSE;

--2.	Create a query that returns the total number of Students that registered during February 2007. Alias the column as "February_Registrations".
--SELECT COUNT(student_id) AS "February_Registrations"
--	FROM student
--WHERE REGISTRATION_DATE BETWEEN '01-FEB-2007' AND '28-FEB-2007';

--3.	Create a query that returns the average, highest and lowest final exam scores for Section 147.
--SELECT ROUND(AVG(numeric_grade), 1) AS "Class Average", 
--	   MAX(numeric_grade) AS "Class High", 
--	   MIN(numeric_grade) AS "Class Low" 
--	FROM grade
--WHERE section_id = 147;

--4.	List the city, state and number of zip codes for all cities with more than one zip code. Arrange by state and city.
--SELECT city, state, COUNT(DISTINCT zip) AS "Zip Codes per City" 
--	FROM zipcode
--GROUP BY state, city
--ORDER BY state, city;

--5.	Provide a list of Sections and the number of students enrolled in those sections for students who enrolled on 2/21/2007. 
--      Sort the output from highest to lowest on the number of students enrolled.
--SELECT section_id, COUNT(student_id) AS "Total Students/Section", enroll_date
--	FROM enrollment
--WHERE enroll_date LIKE '21-FEB-07'
--GROUP BY section_id, enroll_date
--ORDER BY COUNT(student_id) DESC;

--6.	Create a query listing the Student ID, Section ID and average grade for all students in section 86.
--      Sort your list on the student ID and display all the average grades as a number with four decimal places.
--SELECT student_id, section_id, ROUND(AVG(numeric_grade), 4)
--	FROM grade
--WHERE section_id = 86
--GROUP BY student_id, section_id
--ORDER BY student_id;

--7.	Create a query to determine the number of sections that student ID 250 is enrolled in.
--      Your output should contain the student ID and the number of sections enrolled.
--SELECT student_id, COUNT(section_id) AS "Total Sections"
--	FROM enrollment
--WHERE student_id = 250
--GROUP BY student_id;

--8.	List the section ID and lowest quiz score for all sections where the low score is less than a B (less than 80).
--SELECT section_id, MIN(numeric_grade) AS "Lowest Quiz Grade"
--	FROM grade
--WHERE grade_type_code = 'QZ' AND numeric_grade < 80
--GROUP BY section_id
--ORDER BY section_id;

--9.	List the names of employers who employ more than five students. Your output should contain the employer name and the number of student employees.
--SELECT employer, COUNT(student_id) AS "Total Student Employees"
--	FROM student
--GROUP BY employer
--HAVING COUNT(student_id) > 5
--ORDER BY COUNT(student_id) DESC;

--10.	List the section ID, number of participation grades and the lowest participation grade for all sections that have more than 15 participation grades.
SELECT section_id, 
	   COUNT(grade_type_code) AS "Total Grades Given", 
	   MIN(numeric_grade) AS "Lowest Grade"
	FROM grade
WHERE grade_type_code = 'PA'
GROUP BY section_id
HAVING (COUNT(grade_type_code)) > 15
ORDER BY "Total Grades Given" DESC;














