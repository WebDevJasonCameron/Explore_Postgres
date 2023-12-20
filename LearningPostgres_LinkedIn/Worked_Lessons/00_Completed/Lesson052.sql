-- 1. What is the order of execution of WHERE clause

-- FROM | WHERE | SELECT | ORDER BY

SELECT *
FROM movies
WHERE 
	movie_lang = 'English'
ORDER BY 
	movie_length DESC;
