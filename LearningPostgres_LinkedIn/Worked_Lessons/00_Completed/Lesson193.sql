-- CROSS JOIN
-- ####################

-- * Resulsts (also known as a Cartesian product) lines up each row in the left table
-- with each row in the right table to poresent all possible combination of rows

-- * If table1 has n rows and table2 has m rows, the result set will be
-- n * m rows

-- * Unlike INNER JOIN, LEFT / RIGHT JOIN, CROSS JOIN does not have a join predicate

-- 1. cross left_product and right_product

SELECT 
	*
FROM left_products l
CROSS JOIN right_products r;

-- 2. Reverse

SELECT 
	*
FROM right_products r
CROSS JOIN left_products l;

-- 3. CROSS JOIN actors with directors

SELECT *
FROM actors a
CROSS JOIN directors d;






