--SELECT first_name, last_name, phone
--	FROM student
--WHERE registration_date = '23-FEB-07'
--ORDER BY last_name, first_name;

--SELECT course_no, section_id, start_date_time
--	FROM section
--WHERE location = 'L214'
--ORDER BY start_date_time;

--SELECT course_no, section_id, start_date_time, instructor_id
--	FROM section 
--WHERE start_date_time BETWEEN '01-APR-07' AND '01-MAY-07' 
--ORDER BY course_no, section_no;

--SELECT student_id, section_id, final_grade
--	FROM enrollment 
--WHERE enroll_date BETWEEN '01-JAN-07' AND '01-FEB-07' 
--	AND final_grade IS NOT NULL;

--SELECT TO_CHAR(TO_DATE('03-JAN-2011', 'DD-MON-YYYY')) 
--		AS "Semester Start Date", 
--	   TO_CHAR(TO_DATE('03-JAN-2011', 'DD-MON-YYYY')+105, 'DD-MON-YYYY') 
--	   	AS "Semester End Date"
--FROM DUAL;

--6.	Provide a list of course numbers and locations for sections being taught in the odd numbered rooms located in building M.
--SELECT course_no, location
--	FROM section
--WHERE location LIKE 'M%' 
--	AND TO_NUMBER(SUBSTR(location, 4)) / 2 != 0;

--SELECT course_no, TO_NUMBER(LTRIM(location, 'M')) AS M_BLDG
--	FROM section
--WHERE location LIKE 'M%' 
--	AND TO_NUMBER(M_BLDG) / 2 IS NOT NULL;

--6.	Provide a list of course numbers and locations for sections being taught in the odd numbered rooms located in building M.
--SELECT course_no, TO_NUMBER(LTRIM(location, 'M')) AS M_BLDG
--	FROM section
--WHERE location LIKE 'M%' 
--	AND TO_NUMBER(M_BLDG) / 2 IS NOT NULL;

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
--SELECT UNIQUE(section_id), LPAD(LTRIM(TO_CHAR(start_date_time, 'HH24:MI'), '0'), 30) 
--AS "Start Time"
--	FROM SECTION
--ORDER BY section_id;

--10.	List the Student ID and Section ID for all students who enrolled at 10:18am.
--SELECT student_id, section_id, LTRIM(TO_CHAR(enroll_date, 'HH24:MI'), '0') 
--		AS "Enrollment Time"
--	FROM enrollment
--WHERE LTRIM(TO_CHAR(enroll_date, 'HH24:MI'), '0') = '10:18';


-- QUIZ 5

SELECT course_no, modified_date
FROM SECTION
WHERE modified_date = '22-MAR-99'

--SELECT TO_CHAR(123) FROM dual
--SELECT TO_CHAR('123') FROM dual
--SELECT TO_NUMBER('000123') FROM dual
--SELECT TO_CHAR('A123') FROM dual
--SELECT TO_NUMBER('A123') FROM dual
--SELECT TO_NUMBER('001.99999') FROM dual

--SELECT TO_NUMBER('ABC')
--FROM dual

--SELECT TO_CHAR(NEXT_DAY(TO_DATE('02-JAN-2000 SUN', 
--'DD-MON-YYYY DY'), 'SUN'), 
--'MONTH DDth, YYYY')
--FROM dual

--SELECT *
--	FROM SECTION
--WHERE start_date_time BETWEEN TO_DATE('31-DEC-2200','DD-MON YYYY')
--       AND TO_DATE('01/01/1900','MM/DD/YYYY')

--SELECT TO_CHAR(TO_NUMBER('$-999.999')) FROM dual















