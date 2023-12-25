-- LEFT and RIGHT functions

-- PostgreSQL LEFT() function returns the first n characters in the string
SELECT LEFT ('ABCD', 1);

-- n is -1, therefore, the LEFT() rnction returns all character except
-- the last 1 character
SELECT LEFT ('ABC', -1);

-- Get initial for all directors name
SELECT 
	LEFT (first_name, 1) AS initial
FROM directors
ORDER BY 1;

SELECT 
	LEFT (first_name, 1) AS initial,
	COUNT(*) total_initials
FROM directors
GROUP BY 1
ORDER BY 1;

-- Get first 6 characters from all movies
SELECT 
	movie_name,
	LEFT(movie_name, 6)
FROM movies;

-- PostgreSQ RIGHT() function returns the last n characters in the string
SELECT 
	movie_name,
	RIGHT(movie_name, -6)
FROM movies;

-- Find all directors where their last name ends with 'on'
SELECT
	last_name,
	RIGHT(last_name, 2)
FROM directors
WHERE 
	RIGHT(last_name, 2) = 'on';




