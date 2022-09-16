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
SELECT city, state, zip
	FROM zipcode
WHERE COUNT(zip IN city) > 1
ORDER BY state, city;