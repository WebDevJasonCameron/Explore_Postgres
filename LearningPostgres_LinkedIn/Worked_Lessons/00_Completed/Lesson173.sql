-- Using HAVING Clause
-- ####################### 

-- 1. List movies languages where sum total length of the movies is greater than 200

SELECT
	movie_lang,
	SUM(movie_length)
FROM 
	movies
GROUP BY movie_lang
HAVING SUM(movie_length) > 200
ORDER BY SUM(movie_length);


-- 2. List directors where their sum total movie length is greater than 200

SELECT 
	director_id,
	SUM(movie_length)
FROM 
	movies
GROUP BY 
	director_id
HAVING 
	SUM(movie_length) > 200
ORDER BY 2 DESC;

-- 3. Can we use column aliases with HAVING clause  <-- no

SELECT 
	director_id,
	SUM(movie_length) AS tml
FROM 
	movies
GROUP BY 
	director_id
HAVING 
	tml > 200						-- <- ERROR
ORDER BY 2 DESC;












