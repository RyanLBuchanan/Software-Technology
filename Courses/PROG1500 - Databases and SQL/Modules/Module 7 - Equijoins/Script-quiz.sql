--The following two SQL statements are equivalent.
--SELECT s.student_id, e.section_id, s.last_name
--  FROM student s, enrollment e
-- WHERE s.student_id = e.student_id
--   AND last_name = 'Torres'

--SELECT s.student_id, section_id, last_name
--  FROM student s JOIN enrollment e
--    ON (s.student_id = e.student_id)
-- WHERE last_name = 'Torres'
--True


--To join four tables, you must have at least three join conditions.
--True


--Joins involving multiple columns must always follow the primary key/foreign key relationship path.
--True


--The common column used in the join condition must be listed in the SELECT list.
--False


--You need to use a table alias to be able to write a self-join.
--True


--The NATURAL JOIN keywords and the USING clause of the ANSI join syntax are mutually exclusive.
--True


--To equijoin a table with another table involves matching the common column values.
--True


--Determine the question for the following SELECT statement.
--SELECT c.description, grade_type_code, numeric_grade
--  FROM grade g, enrollment e, section s, course c
-- WHERE c.course_no = 330
--   AND g.student_id = 221
--   AND s.course_no = c.course_no
--   AND s.section_id = e.section_id
--   AND g.section_id = e.section_id
--   AND g.student_id = e.student_id
--Show the course description of the course 330 in which the student with the id 221 is enrolled. Show also the grade type.


--Which question is answered by the following SQL statement?

--SELECT description, section_no, last_name
--  FROM course c, section s, instructor i
-- WHERE c.course_no = s.course_no
--   AND s.instructor_id = i.instructor_id
--   AND TO_CHAR(start_date_time, 'DY') = 'TUE'
--Display a list of course descriptions, their section numbers, and for each section the last name of the assigned instructor. Only show sections that start on Tuesdays


--Determine the question for the following SQL statement.
SELECT z.*, last_name, first_name
  FROM student s JOIN zipcode z
    ON (s.zip = z.zip)
 WHERE last_name = 'Torres'
 
--Show students with the first and last name and their corresponding zip code. Include all the columns of the ZIPCODE table in the result. Only shows students with the last name of Torres.