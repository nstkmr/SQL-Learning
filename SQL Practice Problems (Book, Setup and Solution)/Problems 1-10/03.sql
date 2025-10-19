--
-- 3.) Sales Representatives
--   • We'd like to see just the FirstName, LastName, and HireDate of all the employees with the Title of Sales Representative. Write a SQL
--     statement that returns only those employees.
--
SELECT first_name, last_name, hire_date
FROM employees
WHERE title='Sales Representative';