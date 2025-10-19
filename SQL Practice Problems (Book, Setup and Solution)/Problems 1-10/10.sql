--
-- 10.) Employees, in order of age
--    • For all the employees in the Employees table, show the FirstName, LastName, Title,
--      and BirthDate. Order the results by BirthDate, so we have the oldest employees first.
--
SELECT first_name, last_name, title, birth_date
FROM employees
ORDER BY birth_date;