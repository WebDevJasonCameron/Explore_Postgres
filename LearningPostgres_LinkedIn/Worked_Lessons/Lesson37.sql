-- ADDING ALIAS TO COLUMN NAME
-- #############################

-- 1. Lets get all records from actors table, and review it from non-technical reader point of view

SELECT * FROM actors;

-- 2. Make an alias for first_name as fristName of actors table

/*
SELECT column AS alias_name FROM tablename
*/

SELECT first_name AS "firstName" FROM actors;


-- 3. Column aliases that contain spaces, we use quotes.

SELECT first_name AS "First Name" FROM actors; 

-- 4. MAKE alias movie_name "Movie Name" and movie_lang as "Language" of movies table

SELECT movie_lang AS "Movie Name", movie_name AS "Language" FROM movies;

-- 5. The AS keyword is optional
SELECT 
	movie_name "Movie Name", 
	movie_lang "Language" 
FROM movies;






