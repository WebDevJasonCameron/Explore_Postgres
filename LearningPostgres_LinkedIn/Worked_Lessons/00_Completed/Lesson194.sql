-- NATURAL JOIN
-- ######################
/*
	* Creates an implicit join based on the same column name in joined tables
	* Can be an INNER JOIN OR LEFT/RIGHT JOIN
	* If not specifiy a join explicitly, then PostgreSQL will use the INNER JOIN by default
*/

-- 1. Nat Join lp and rp

SELECT *
FROM left_products
NATURAL JOIN right products

-- 2. 