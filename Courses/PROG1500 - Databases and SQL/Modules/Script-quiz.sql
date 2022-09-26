--The following index was created.
--CREATE INDEX crse_cost_i ON course (cost)
--Determine which of the following queries takes advantage of the index.
--SELECT cost FROM course WHERE cost >= 11.2304

--Views are useful for security, for simplifying the writing of queries, and for hiding data complexity.
--TRUE

--A column in a view may have a different name than in the base table.
--FALSE
WRONG 
--TRUE


--An UPDATE to the STATE column in the ZIPCODE table is permitted using the following view.

--CREATE OR REPLACE VIEW my_zipcode AS
--SELECT zip, city, state, created_by,
--  created_date, modified_by,
--  TO_CHAR(modified_date, 'DD-MON-YYYY') modified_date
--FROM zipcode

--TRUE

--Identify the error in the following view definition.

--1. CREATE OR REPLACE VIEW my_student
--  (studid, slname, szip) AS
--2. SELECT student_id, last_name, zip
--3. FROM student
--4. WHERE student_id BETWEEN 100 AND 200

--Line 1.
WRONG 
--No ERROR

--Views provide security by restricting access to specific rows and/or columns of a table.
--True

--Is this valid?

--CREATE OR REPLACE VIEW my_instructor AS
--SELECT first_name || ' ' || last_name AS InstructorsName, phone
--FROM instructor
--TRUE


--The following is the CREATE TABLE statement of a table named EMP and the CREATE VIEW statement of the MY_EMP view. Determine the salary for the new employee Smith based on the INSERT statement issued.
--CREATE TABLE emp
-- (emp_id NUMBER NOT NULL,
-- last_nm VARCHAR2(50),
-- salary NUMBER(10,2) DEFAULT 0 NOT NULL)

--CREATE OR REPLACE VIEW my_emp AS
--SELECT emp_id, last_nm
-- FROM emp
--
--INSERT INTO my_emp
-- (emp_id, last_nm)
--VALUES
-- (110, 'SMITH')

--The INSERT statement fails
WRONG
--SMITH'S SALALRY IS 0


--The following index was created on the STUDENT table:
--CREATE INDEX stud_reg_dt ON student(registration_date)
--Determine if the query takes advantage of the index.
--SELECT student_id
-- FROM student
-- WHERE registration_date >= TRUNC(SYSDATE-1)
--TRUE

--Under what circumstances can views become invalid? Select all that apply.
WRONG
--BOTH
























