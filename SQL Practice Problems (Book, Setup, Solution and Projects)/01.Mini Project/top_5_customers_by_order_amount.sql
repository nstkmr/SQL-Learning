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