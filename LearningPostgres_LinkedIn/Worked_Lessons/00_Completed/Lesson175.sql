-- HAVING vs WHERE
-- ####################

-- * HAVING works result group
-- * WHERE works on SELECT columns and not on result group

-- Get the movie lang where their sum total movies length is greater than 200

SELECT
	movie_lang,
	SUM(movie_length)
FROM 
	movies
GROUP BY
	movie_lang
HAVING
	SUM(movie_length) > 200
ORDER BY
	2 DESC
;


