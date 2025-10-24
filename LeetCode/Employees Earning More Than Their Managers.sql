-- Problem link: https://leetcode.com/problems/employees-earning-more-than-their-managers/

SELECT name AS Employee 
FROM Employee e
WHERE salary > (SELECT salary 
                FROM Employee
                WHERE id=e.managerId);