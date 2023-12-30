-- FULL Joins
-- ################

-- * Returns every row from all the join tables

/*
	SELECT 
		table1.column1,
		table2.column1
	FROM table1
	FULL JOIN table2 ON table1.column1 = table2.column2

*/ 

-- Returns all the data from table1 and table 2

-- 1. List join left_products and right_products via FULL JOIN

SELECT * FROM left_products;
SELECT * FROM right_products;


SELECT *
FROM left_products l
FULL JOIN right_products r ON l.product_id = r.product_id;

-- 2. Run FULL JOINS on movies

SELECT 
 	d.first_name,
	d.last_name,
	
	m.movie_name
FROM directors d 
FULL JOIN movies m ON m.director_id = d.director_id
ORDER BY d.first_name;

-- 3. Revers tables with full join

SELECT 
 	d.first_name,
	d.last_name,
	
	m.movie_name
FROM movies m
FULL JOIN directors d  ON m.director_id = d.director_id
ORDER BY d.first_name;

-- 4. Add WHERE

SELECT 
 	d.first_name,
	d.last_name,
	
	m.movie_name
FROM directors d 
FULL JOIN movies m ON m.director_id = d.director_id
WHERE 
	m.movie_lang IN ('English', 'Chinese')
ORDER BY d.first_name;


