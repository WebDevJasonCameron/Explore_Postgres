-- Using IS NULL and IS NOT NULL keywords
-- #######################################

/*

SELECT column_list FROM table_name WHERE column_name IS NULL
SELECT column_list FROM table_name WHERE column_name IS NOT NULL

*/

-- 1. Find list of actors with missing birth date

SELECT * 
FROM actors
WHERE
	date_of_birth IS NULL
ORDER BY date_of_birth
;

-- 2. Find list of actors with missing birth date or missing first name

SELECT * 
FROM actors
WHERE
	date_of_birth IS NULL
	OR first_name IS NULL
ORDER BY date_of_birth
;

-- 3. Get list of movies where domestic revenues is NULL

SELECT * 
FROM movies_revenues
SELECT * 
FROM actors
WHERE
	date_of_birth IS NULL
ORDER BY date_of_birth
;
ORDER BY 
	revenues_domestic
;





