--SELECT RPAD(city, 20) AS City_Name, 
--	   LPAD(state, 10, '-') AS State_Name
--	FROM zipcode
--ORDER BY CITY_NAME;

--SELECT * FROM DUAL;

--SELECT LTRIM('000123450000', '0') LEFT, 
--	   RTRIM('000123450000', '0') RIGHT,
--	   RTRIM(LTRIM('000123450000', '0'), '0') 
--	FROM DUAL; 

--SELECT TRIM(BOTH '0' FROM '000123450000') FROM DUAL;

--SELECT TRIM('0' FROM '000123450000') FROM DUAL;

--SELECT TRIM('     12345     ') FROM DUAL;

--SELECT first_name||' '||last_name AS "Student Name",
--       PHONE 
--	FROM student
--WHERE employer = 'Baxxon Corp.'
--ORDER BY FIRST_NAME;

--SELECT DISTINCT employer
--FROM student
--WHERE INSTR(employer, 'Corp') >= 1
--ORDER BY employer;

--SELECT last_name||', '||SUBSTR(last_name, 1, 1) AS "Student Name"
--	FROM student
--WHERE SUBSTR(phone, 1, 3) = '203'
--ORDER BY last_name;

--SELECT first_name||' '||last_name AS "Student Name", street_address
--	FROM student
--WHERE phone IS NULL
--ORDER BY last_name;

--SELECT zip
--	FROM zipcode 
--WHERE city = 'New York' 
--	AND state = 'NY'
--ORDER BY zip;


--SELECT course_no, location
--	FROM section 
--WHERE location LIKE 'M%'
--ORDER BY course_no;

--SELECT city, state,
--	CASE WHEN state = 'CT' THEN 'Connecticut'
--		 WHEN state = 'MA' THEN 'Massachusetts'
--		 WHEN state = 'WV' THEN 'West Virginia'
--	END "Full State Name"
--FROM zipcode
--WHERE state = 'MA' 
--	OR state = 'CT' 
--	OR state = 'WV'
--ORDER BY state;

--SELECT salutation||' '||
--	   first_name||' '||
--	   last_name||' '||
--	   street_address||' '||
--	   zip 
--	   AS "Instructor Address"
--	FROM instructor
--WHERE zip = '10025'
--ORDER BY last_name;

--SELECT student_id AS "Student ID", numeric_grade AS "Final Exam",
--	CASE WHEN numeric_grade >= 85 THEN 'PASS'
--		ELSE 'FAIL'
--		END "Exam Result"
--	FROM grade
--WHERE section_id = 103 
--	AND grade_type_code = 'FI'
--ORDER BY numeric_grade DESC;

--SELECT NVL(TO_CHAR(cost), 'None') 
--FROM course

