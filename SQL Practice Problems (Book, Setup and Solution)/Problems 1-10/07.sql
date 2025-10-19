-- 
-- 7.) Products with "queso❞ in ProductName
--   • In the products table, we'd like to see the ProductID and ProductName for those products
--     where the ProductName includes the string "queso".
--
SELECT product_id, product_name
from products
where product_name LIKE '%queso%';