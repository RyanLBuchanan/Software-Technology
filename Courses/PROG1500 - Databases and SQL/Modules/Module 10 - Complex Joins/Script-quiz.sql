--There are no restrictions with using the Oracle outer join operator (+).
--FALSE

--You need to use a table alias to be able to write a self-join.
--TRUE

--You cannot use subqueries or ORDER BY clauses with self-joins.
--FALSE

--All joins must be based on the equality of values between the joining tables.
--FALSE

--Self joins are only used for tables with recursive relationships.
--FALSE 

--Self-joins work only when you have a recursive relationship in your table.
--FALSE 

--There are no restrictions with using the Oracle outer join operator (+).
--FALSE

--The ANSI join syntax is more flexible than the Oracle outer join syntax.
--TRUE

--A self-join requires you to always join the foreign key with the primary key in the same table.
--FALSE

--Oracle supports a full outer join using two outer join operators (+). 
--FALSE

--Which of the WHERE clauses results in the following error message?
--01468. 00000 -  "a predicate may reference only one outer-joined table"
--SELECT c.course_no, s.course_no, SUBSTR(c.description, 1, 20), s.start_date_time
--	FROM course c, section s


--WHERE c.course_no(+) = s.course_no(+) --ERROR above
--WHERE c.course_no = s.course_no --Valid clause
--WHERE c.course_no = s.course_no(+) --Valid clause
--WHERE c.course_no(+) = s.course_no --Valid clause