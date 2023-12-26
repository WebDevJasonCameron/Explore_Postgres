-- MIN and MAX functions
-- ############################

-- 1. Longest length movie in movies table
SELECT 
	movie_length
FROM movies
ORDER BY movie_length DESC;

SELECT 
	MAX(movie_length)
FROM movies;

-- 2. Shortest length movie in movies table
SELECT 
	movie_length
FROM movies
ORDER BY movie_length ASC;

SELECT 
	MIN(movie_length)
FROM movies;

-- 3. Longest length movie in movies table in English language
SELECT 
	MAX(movie_length)
FROM movies
WHERE 
	movie_lang = 'English';
	
-- 4. Latest release movi in English 
SELECT *
FROM movies
WHERE 
	movie_lang = 'English'
ORDER BY release_date DESC;

SELECT 
	MAX(release_date)
FROM movies
WHERE 
	movie_lang = 'English';
	
-- 5. First movie to be released in Chinese
SELECT *
FROM movies
WHERE 
	movie_lang = 'Chinese'
ORDER BY release_date ASC;

SELECT 
	MIN(release_date)
FROM movies
WHERE 
	movie_lang = 'Chinese';
	
-- 6. MIN MAX with Alphabet
SELECT 
	MAX(movie_name) 
FROM movies;