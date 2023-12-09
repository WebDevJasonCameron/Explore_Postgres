-- 1. Get all the movies where movie length is greater than 100

SELECT * 
FROM movies
WHERE 
	movie_length > 100
ORDER BY 
	movie_length;
	
-- 2. Get all movies where movie length is greater than and equal to 100

SELECT * 
FROM movies
WHERE 
	movie_length >= 100
ORDER BY 
	movie_length;
	
-- 3. Get all movies where movie length is less than 100

SELECT * 
FROM movies
WHERE 
	movie_length < 100
ORDER BY 
	movie_length;

-- 4. Get all movies where movie length is less and equal to 100

SELECT * 
FROM movies
WHERE 
	movie_length <= 100
ORDER BY 
	movie_length;
	
-- 5. Can we work with dates data types?

SELECT *
FROM movies
WHERE 
	release_date > '2000-01-01'
ORDER BY release_date ASC;

-- 6. How about using text data types

SELECT * 
FROM movies
WHERE 
	movie_lang > 'Korean'
ORDER BY 
	movie_lang;
	

SELECT * 
FROM movies
WHERE 
	movie_lang < 'English'
ORDER BY 
	movie_lang;
	
-- 7. Get all movies not equal to English

SELECT * 
FROM movies
WHERE 
	movie_lang <> 'English'
ORDER BY 
	movie_lang;