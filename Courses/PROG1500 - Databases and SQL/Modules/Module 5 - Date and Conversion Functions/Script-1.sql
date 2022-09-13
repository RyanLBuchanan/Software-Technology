SELECT first_name, last_name, phone, TO_CHAR(registration_date, 'MM/DD/YYYY') AS "Date"
FROM student
WHERE Date = '02/23/2007'
ORDER BY last_name, first_name;