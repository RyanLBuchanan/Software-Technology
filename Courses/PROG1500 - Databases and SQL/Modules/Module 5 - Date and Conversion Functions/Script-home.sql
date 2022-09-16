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
SELECT course_no, TO_NUMBER(LTRIM(location, 'M')) AS M_BLDG
	FROM section
WHERE location LIKE 'M%' 
--	AND TO_NUMBER(M_BLDG) / 2 IS NOT NULL;
























