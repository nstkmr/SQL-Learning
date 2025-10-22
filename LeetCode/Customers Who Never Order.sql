-- Problem link: https://leetcode.com/problems/customers-who-never-order/description/

SELECT c.name as Customers
FROM Customers c
WHERE c.id NOT IN (SELECT c.id
            FROM Customers c
            RIGHT JOIN Orders o
            ON c.id=o.customerId);
