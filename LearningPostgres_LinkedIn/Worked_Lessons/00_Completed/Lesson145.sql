-- AVG function
-- ###################

-- Calculate average value on a set
-- Returns 1 value

-- AVG(columnname)

-- 1. Get average movie length for all movies
SELECT * FROM movies;

SELECT 
	movie_length
FROM movies
ORDER BY movie_length;

SELECT 
	AVG(movie_length)
FROM movies;

-- 2. Average movie length for all English based lang
Select 
	AVG(movie_length)
FROM movies
WHERE 
	movie_lang = 'English';
	
-- 3. Get average movie length for all English based movies
-- Using AVG with DISTINCT
SELECT 
	DISTINCT(movie_length)
FROM movies
WHERE 
	movie_lang = 'English';
	
SELECT 
	AVG(DISTINCT(movie_length))
FROM movies
WHERE 
	movie_lang = 'English';

-- 4. Average on movie name <-- Error
SELECT 
	AVG(movie_name)
FROM movies;

-- 5. Using AVG on SUM functions for all English Movies
SELECT 
	AVG(movie_length),
	SUM(movie_length)
FROM movies
WHERE
	movie_lang = 'English';

-- 6. How ABG handle NULL 
CREATE TABLE demo_avg
(
	num INT
);

INSERT INTO demo_avg 
	(num)
VALUES
	(1),
	(2), 
	(3),
	(NULL);
	
SELECT * FROM demo_avg;

SELECT 
	AVG(num)
FROM demo_avg;

DROP TABLE demo_avg;






