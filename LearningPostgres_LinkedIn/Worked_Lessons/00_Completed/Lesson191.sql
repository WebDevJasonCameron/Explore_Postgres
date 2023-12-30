-- SELF JOIN
-- ###############

-- * self-join allows you to compare rows within the SAME table

-- * Normal use case of self join is to 
-- 		- query hierarchical data or
--		- compare rows within the same table

/*
	SELECT 
		column_list
	FROM tablename t1
	INNER JOIN tablename t2 ON t1.column = t2.column

*/

-- 1. Let self join left_products table

SELECT 
	*
FROM left_products l1
INNER JOIN left_products l2 ON l1.product_id = l2.product_id;


SELECT 
	*
FROM left_products l1												-- <- ERROR
INNER JOIN left_products l2 ON l1.product_id = l2.product_name;

-- 2. Self Join Directors table

SELECT 
	*
FROM directors d1
INNER JOIN directors d2 ON d1.director_id = d2.director_id;

-- 3. Self join finds all par of movies that hae the same movie length

SELECT
	m1.movie_name,
	m2.movie_name,
	m1.movie_length
	
FROM movies m1
INNER JOIN movies m2 ON m1.movie_length = m2.movie_length
WHERE 
	m1.movie_name != m2.movie_name
ORDER BY 
	m1.movie_name,
	m1.movie_length DESC;










