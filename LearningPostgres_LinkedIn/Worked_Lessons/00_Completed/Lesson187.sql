-- RIGHT Joins
-- ####################

-- Same as left, just on the right

-- 1. Join left_products and right_priducts via RIGHT JOIN

SELECT 
	*
FROM left_products
RIGHT JOIN right_products ON left_products.product_id = right_products.product_id;

-- 2. RIGHT JOINS on movies database

SELECT 
	d.first_name,
	d.last_name,
	
	m.movie_name
FROM directors d
RIGHT JOIN movies m ON m.director_id = d.director_id
ORDER BY 
	d.last_name;

-- 3. Reverse the tables directores and movies

SELECT 
	d.first_name,
	d.last_name,
	
	m.movie_name
FROM movies m
RIGHT JOIN directors d ON m.director_id = d.director_id
ORDER BY 
	d.last_name;

-- 4. Add a WHERE condition, list of English and Chinese movies only

SELECT 
	d.first_name,
	d.last_name,
	
	m.movie_name
FROM directors d
RIGHT JOIN movies m ON m.director_id = d.director_id
WHERE
	m.movie_lang IN ('English', 'Chinese')
ORDER BY 
	d.last_name;
	
SELECT 
	d.first_name,
	d.last_name,
	
	m.movie_name
FROM movies m
RIGHT JOIN directors d ON m.director_id = d.director_id
WHERE
	m.movie_lang IN ('English', 'Chinese')
ORDER BY 
	d.last_name;	
	
	
	
	
	
	
	
	