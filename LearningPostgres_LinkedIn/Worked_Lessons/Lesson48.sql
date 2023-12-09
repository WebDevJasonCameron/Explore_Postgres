-- 1. Can we use WHERE before FROM <- NO

SELECT *
FROM movies
WHERE 
	movie_lang = 'English';
	
-- 2. CAN WE USE where AFTER order by

SELECT *
FROM movies
WHERE
	age_certificate = '15'
ORDER BY movie_lang = 'Japanes';