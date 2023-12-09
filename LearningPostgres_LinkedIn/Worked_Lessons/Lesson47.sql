-- Using Logical OR operator
-- ##############################

-- 1. Get all English language OR Chinese movies

SELECT * 
FROM movies
WHERE 
	movie_lang = 'English'
	OR movie_lang = 'Chinese';
	
-- 2. Get all English language AND director id equal to 27

SELECT * 
FROM movies
WHERE 
	movie_lang = 'English'
	AND director_id = 27;
	
	
	
	