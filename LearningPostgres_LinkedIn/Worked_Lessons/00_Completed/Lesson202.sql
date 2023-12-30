-- Combining queries together with INTERSECT
-- ############################################

-- 1. Use INTERSECT on left_products and right _products 

SELECT
	product_id,
	product_name
FROM left_products
INTERSECT
SELECT
	product_id,
	product_name
FROM right_products;

-- 2. Dups with INTERSECT? No

-- 3. Intersect first_name, last_name of directors and actors 

SELECT
	first_name,
	last_name
FROM directors
INTERSECT
SELECT
	first_name,
	last_name
FROM actors;





















