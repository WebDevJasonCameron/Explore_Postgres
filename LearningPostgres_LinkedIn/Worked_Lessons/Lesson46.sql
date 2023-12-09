-- Using WHERE 
-- ####################

/*

SELECT
	column_list
FROM table_name
WHERE
	conditions

*/

-- 1. Get all English langue movies

SELECT * 
FROM movies
WHERE 
	movie_lang = 'English';


-- 2. Get all Japanese langue movies

SELECT * 
FROM movies
WHERE 
	movie_lang = 'Japanese';

-- 3. Use multiple conditions

SELECT * 
FROM movies
WHERE 
	movie_lang = 'English' AND
	age_certificate = '18';
	
SELECT * 
FROM movies
WHERE 
	movie_lang = 'Japanese' AND
	age_certificate = '18';
	
	
	
	
	