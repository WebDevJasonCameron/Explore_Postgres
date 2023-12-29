-- INNER JOIN with USING
-- ###########################

-- We use USING only when joining tables have the same COLUMNS NAMES, rather than ON!!

/*
	SELECT
		table1.column1,
		table2.column2
	FROM table1
	INNER JOIN table2 
	USING (column1)
*/

-- 1. Connect 'movies' and 'directors' table with USING keyword

SELECT 
	*
FROM movies m
INNER JOIN directors d
	USING (director_id);

SELECT 
	m.movie_name,
	
	d.first_name
FROM movies m
INNER JOIN directors d
	USING (director_id);


-- 2. Connect 'movies' and 'movies_revenues'

SELECT 
	*
FROM movies m
INNER JOIN movies_revenues r
	USING (movie_id);

SELECT 
	m.movie_name,
	
	r.revenues_international
FROM movies m
INNER JOIN movies_revenues r
	USING (movie_id);
	
-- 3. Connect more than two tables
-- Connect movies, directors ad movie_revenues

-- To do this: 	movies -> directors 		m.director_id = d.director_id
--				movies -> movies_revenues	m.movie_id = r.movie_id

SELECT 
	*
FROM movies m
INNER JOIN directors d USING (director_id)
INNER JOIN movies_revenues r USING (movie_id);


SELECT 
	m.movie_name,
	d.first_name,
	r.revenues_domestic
FROM movies m
INNER JOIN directors d USING (director_id)
INNER JOIN movies_revenues r USING (movie_id);


