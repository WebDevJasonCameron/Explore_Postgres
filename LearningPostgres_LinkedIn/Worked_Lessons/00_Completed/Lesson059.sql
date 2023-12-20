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
ORDER BY 
	revenues_domestic
;
 
SELECT *
FROM movies_revenues
WHERE
	revenues_domestic IS NULL
ORDER BY 
	revenues_domestic
;

-- 4. Get list of movies where either domestic or international revenues is NULL

SELECT *
FROM movies_revenues
WHERE 
	revenues_domestic IS NULL 
	OR revenues_international IS NULL
;

-- 5. Get list of mivies where either domestic and international revenues are NULL

SELECT *
FROM movies_revenues
WHERE 
	revenues_domestic IS NOT NULL
;

-- 6. How about using the following instead of IS NULL

SELECT * 
FROM actors
WHERE date_of_birth = NULL
;

SELECT * 
FROM actors
WHERE date_of_birth = 'NULL'					-- ERROR
;

SELECT * 
FROM actors
WHERE date_of_birth = ''						-- ERROR
;

SELECT * 
FROM actors
WHERE date_of_birth = " "						-- ERROR
;
