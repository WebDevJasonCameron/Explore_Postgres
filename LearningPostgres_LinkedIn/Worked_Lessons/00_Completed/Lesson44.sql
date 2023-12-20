-- Selecting estinct Values
-- ########################

-- SELECT DISTINCT column_name FROM table_name

-- 1. Lets get all records from movies table

SELECT * FROM movies;


-- 2. Get movie_lang from movies table

SELECT 
	movie_lang
FROM movies;

-- 3. Get unique movie_lang

SELECT 
	DISTINCT movie_lang
FROM movies
ORDER BY 1;

-- 4. Get unique director_id

SELECT
	DISTINCT director_id
FROM movies
ORDER BY 1;

-- 5. Get multiple distinct values e.g. get unique movie_lang, director_id

SELECT
	DISTINCT movie_lang, director_id
FROM movies
ORDER BY 1;

-- 6. Get all unique records in movies table

SELECT 
	DISTINCT *
FROM movies;







