--
-- 4.) Sales Representatives in the United States
--   • Now we'd like to see the same columns as above, but only for those employees that both have the title of Sales Representative,
--     and also are in the United States.
--
SELECT first_name, last_name, hire_date
FROM employees
WHERE title='Sales Representative' AND country='USA';