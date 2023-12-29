-- INNER JOINS
-- #########################

-- 1. Combine 'movies' and 'directors' tables

SELECT *
FROM movies
ORDER BY 
	director_id;
	
SELECT * FROM directors;

		-- directors.director_id = movies.director_id

SELECT 
	movies.movie_id,
	movies.movie_name,
	movies.director_id,
	
	directors.first_name
FROM movies
INNER JOIN directors
	ON movies.director_id = directors.director_id;

SELECT 
	m.movie_id,
	m.movie_name,
	m.director_id,
	
	d.first_name
FROM movies m
INNER JOIN directors d
	ON m.director_id = d.director_id;


SELECT 
	m.movie_id,
	m.movie_name,
	
	d.first_name
FROM movies m
INNER JOIN directors d
	ON m.director_id = d.director_id;



-- 3. Filter some records

SELECT 
	m.movie_id,
	m.movie_name,
	m.director_id,
	m.movie_lang,
	
	d.first_name
FROM movies m
INNER JOIN directors d
	ON m.director_id = d.director_id
WHERE 
	m.movie_lang = 'English';


-- 4. Using tablename.* or table_alias.* instead of individual column name

SELECT 
	m.*,
	
	d.*
FROM movies m
INNER JOIN directors d
	ON m.director_id = d.director_id;





