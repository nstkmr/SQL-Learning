-- Step 1
-- Understanding the relationship between customers and orders before calculating order amounts, 
-- The result shows all orders placed by each customer.

SELECT c.customer_id, o.order_id
From customers c
JOIN orders o
ON c.customer_id=o.customer_id;

-- Step 2
-- Preparing to calculate total amount per order, Each row now represents a single product line in an order.

SELECT 
  c.customer_id,
  o.order_id,
  od.unit_price,
  od.quantity,
  od.discount
FROM customers c
JOIN orders o 
ON c.customer_id = o.customer_id
JOIN order_details od
ON o.order_id = od.order_id;

-- Step 3
-- Getting the total value of every order for each customer, SUM(...) calculates order totals with discounts applied.

SELECT c.customer_id, o.order_id, SUM(od.unit_price * od.quantity * (1 - od.discount)) AS order_total
From customers c
JOIN orders o 
ON c.customer_id=o.customer_id
JOIN order_details od
ON o.order_id=od.order_id
GROUP BY c.customer_id, o.order_id;

-- Step 4
-- The outer query treats the subquery as a temporary table and sums all orders for each customer to get their total spending,
-- Finally, it sorts customers by total spending and returns the top 5 highest-spending customers.

SELECT customer_id, SUM(order_total) AS total_spent
FROM (SELECT c.customer_id, o.order_id, SUM(od.unit_price * od.quantity * (1 - od.discount)) AS order_total
	From customers c
	JOIN orders o
	ON c.customer_id=o.customer_id
	JOIN order_details od
	ON o.order_id=od.order_id
	GROUP BY c.customer_id, o.order_id) AS order_summary
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;