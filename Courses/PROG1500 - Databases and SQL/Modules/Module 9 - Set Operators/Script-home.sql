--1.	Provide a list of students that have enrolled in a course that allowed them an opportunity to drop a lowest score.
SELECT last_name, first_name
	FROM student
WHERE student_id IN
	(SELECT e.student_id
		FROM enrollment e, section s
	WHERE e.section_id = s.section_id
		AND e.section_id IN
			(SELECT section_id
				FROM grade_type_weight
			WHERE drop_lowest = 'Y'))
ORDER BY last_name;


--2.	List the names and phone numbers of instructors who teach students that live in same zipcode as the instructor.
--SELECT i.last_name, i.first_name, i.phone
--	FROM instructor i, student s, section t, enrollment e 
--WHERE i.zip = s.zip
--	AND i.instructor_id = t.instructor_id
--	AND s.student_id = e.student_id
--	AND e.section_id = t.section_id
--ORDER BY i.last_name;



--3.	Provide a list of names and cities of students and instructors that live in zipcode 10025. Identify each person's role as either "Student" or "Instructor". Sort the list by role, last name and first name.





--4.	Create a query that lists location, number of sections taught in that location and number of students enrolled in courses at that location. Sort by location.





--5.	Create a query that shows all of the individual grades for student 112 in section 95 and also the average of those grades. The individual grades should come first with the average at the bottom. List the grade type code and numeric grade. The average row should have a caption of, "Average for student 112".

