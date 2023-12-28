-- Grouping Records by GROUP BY
-- ###############################

-- 1. Count all movies group by movie language

SELECT
	movie_lang,
	COUNT(movie_lang)
FROM movies
GROUP BY movie_lang;

-- 2. Get average movie length group by movie language

SELECT 
	movie_lang,
	AVG(movie_length)
FROM movies
GROUP BY movie_lang;

-- 3. Get the sum total movie length per age certificate

SELECT
	age_certificate,
	SUM(movie_length)
FROM movies
GROUP BY age_certificate;

-- 4. List min and max movie length group by movie language

SELECT
	movie_lang,
	MIN(movie_length),
	MAX(movie_length)
FROM movies
GROUP BY movie_lang
ORDER BY MAX(movie_length) DESC;

-- 5. Use group by without aggregate function?

SELECT 
	movie_length
FROM movies
GROUP BY movie_length;

SELECT 
	movie_length
FROM movies
GROUP BY movie_length
ORDER BY movie_length;



