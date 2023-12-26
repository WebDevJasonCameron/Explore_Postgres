-- Count results using COUNT
-- ############################

-- 1. Count all records
SELECT 
	COUNT(*) 
FROM movies;

-- 2. Count all records of a specification column
SELECT
	COUNT(movie_length)
FROM movies;

-- 3. COUNT with DISTINCT
SELECT 
	COUNT(DISTINCT(movie_lang))  -- <- Removes dups
FROM movies;

-- 4. COUNT all dinstinct movie directors
SELECT 
	COUNT(DISTINCT(director_id))
FROM movies;

-- 5. COUNT ll english movies
SELECT 
	COUNT(*)
FROM movies
WHERE
	movie_lang = 'English';


