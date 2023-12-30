-- Combining Queries together with UNION
-- #######################################

/*
	- UNION operator combines result sets from two or more SELECT statements into a single
	  result set
	- To be able to use UNION;
	  - The order and number of the columns in the select list of all queries must be the
	    same
	  - The date types must be compatible too

*/ 

/*
	SELECT column1, solumn2
	FROM table1
	UNION
	SELECT column1, column2
	FROM table2
*/

-- 1. Lets use UNION on left_products and right_products tables

SELECT 
	product_id,
	product_name
FROM left_products
UNION
SELECT 
	product_id,
	product_name
FROM right_products;

--- 2. Union does not return dups, but unique records

INSERT INTO right_products
	(product_id, product_name)
VALUES
	('10', 'Pen');


-- 3. If dup is needed

SELECT 
	product_id,
	product_name
FROM left_products
UNION ALL
SELECT 
	product_id,
	product_name
FROM right_products;

-- 4. Combine directors and actors tables

SELECT 
	first_name,
	last_name
FROM directors
UNION ALL
SELECT 
	first_name,
	last_name
FROM actors;

-- 5. With order by

SELECT 
	first_name,
	last_name
FROM directors
UNION ALL
SELECT 
	first_name,
	last_name
FROM actors
ORDER BY first_name ASC;






