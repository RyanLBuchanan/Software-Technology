--6.	Provide a list of course numbers and locations for sections being taught in the odd numbered rooms located in building M.
--SELECT course_no, location
--	FROM section
--WHERE location LIKE 'M%' 
--	AND TO_NUMBER(SUBSTR(location, 4)) / 2 != 0;

--7.	Provide a list of Students in zip code 11214 that registered more than 2 days after their student record was created.
--SELECT student_id, CREATED_DATE, REGISTRATION_DATE 
--	FROM student
--WHERE zip = '11214'
--	AND registration_date > TO_CHAR(created_date+2); 

--8.	Create a list of student names and the number of years since they registered (2 decimal places).
-- 		Sort the list on the number of years from highest to lowest.
--SELECT first_name||' '||last_name AS "Student Name", 
--	   ROUND(MONTHS_BETWEEN(SYSDATE, registration_date) / 12, 2)
--	   	AS "Years Since Registration" 
--	FROM student
--ORDER BY 'Years Since Registration' DESC;

--9.	Create a list of starting times for all course sections. Eliminate duplicates. Show only the time of day as "Start Time".
SELECT UNIQUE(section_id), TO_CHAR(start_date_time, 'HH24:MI') 
		AS "Start Time"
	FROM section;
