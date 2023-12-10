-- Using LIMIT to LIMIT output records
-- ####################################

/*

SELECT 
	column_list
FROM table_name
ORDER BY column_name
LIMIT number;

*/

-- 1. Get the top 5 biggest movies by movie length

SELECT * 
FROM movies 
ORDER BY movie_length DESC
LIMIT 5
;

-- 2. Get the top 5 oldest American directors

SELECT *
FROM directors
WHERE 
	nationality = 'American'
ORDER BY date_of_birth ASC
LIMIT 5
;

-- 3. Get the top 10 youngest female actors

SELECT *
FROM actors
WHERE 
	gender = 'F'
ORDER BY date_of_birth DESC
LIMIT 10
;

-- 4. Get the top 10 most domestic profitable movies

SELECT *
FROM movies_revenues
ORDER BY 
	revenues_domestic DESC NULLS LAST
LIMIT 10
;

-- 5. Get the top 10 least domestic profitable movies

SELECT * 
FROM movies_revenues
ORDER BY revenues_domestic
LIMIT 10
;

-- 6. List 5 films starting from the fourth one ordered by movie_id

SELECT * 
FROM movies
ORDER BY movie_id
LIMIT 5 OFFSET 4
;


-- 7. 


