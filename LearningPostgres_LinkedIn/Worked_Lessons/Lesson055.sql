-- Using FETCH
-- #############

-- * FETCH clause to retrieve a portion of rows returned by a query
-- * FETCH clause was introduced in SQL 2008
-- * FETCH clause is functionally equivalent to the LIMIT clause
-- You should use the FETC clause because it follows the standard SQL

/*

OFFSET star { ROW | ROWS}
FETCH { FIRST | NEXT } [ row_count ] { ROW | ROWS } ONLY 

*/

-- 1. Get first row of movies table

SELECT * 
FROM movies
FETCH FIRST 1 ROW ONLY
;

-- 2. GET THE TOP 5 BIGGEST MOVIES BY MOVIE LENGTH

SELECT *
FROM movies
ORDER BY movie_length DESC
FETCH FIRST 5 ROW ONLY
;

-- 3. Get the top 5 oldest American dirctors

SELECT *
FROM directors
ORDER BY date_of_birth ASC
FETCH FIRST 5 ROW ONLY
;

-- 4. Get the top 10 youngest female actors

SELECT * 
FROM actors
WHERE 
	gender = 'F'
ORDER BY date_of_birth DESC
FETCH FIRST 10 ROW ONLY
;

-- 5. Get first 5 movies from the 5th record onwards by long movie length

SELECT *
FROM movies
ORDER BY movie_length DESC
FETCH FIRST 5 ROW ONLY
OFFSET 5
;