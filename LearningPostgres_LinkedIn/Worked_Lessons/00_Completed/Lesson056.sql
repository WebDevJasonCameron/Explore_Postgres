-- Using IN and NOT IN
-- ######################

-- 1. Get all movies for English, Chinese, and Japanese languages

SELECT *
FROM movies
WHERE 
	movie_lang = 'English'
	OR movie_lang = 'Chinese'
	OR movie_lang = 'Japanese'
ORDER BY movie_lang
;

SELECT *
FROM movies
WHERE 
	movie_lang IN ('English', 'Chinese', 'Japanese')
ORDER BY movie_lang
;

-- 2. Get all movies where age certification is 13 and PG type

SELECT *
FROM movies
WHERE 
	age_certificate IN ('12', 'PG')
ORDER BY age_certificate ASC
;

-- 3. Get all movies where director id is not 13 or 10

SELECT * 
FROM movies
WHERE 
	director_id NOT IN ('13', '10')
ORDER BY director_id
;

-- 4. Get all actors where actor_id is not 1, 2, 3, 4

SELECT * 
FROM actors
WHERE 
	actor_id NOT IN ( 1, 2, 3, 4 )
ORDER BY actor_id
;