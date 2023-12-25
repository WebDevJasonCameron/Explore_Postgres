-- LPAD and RPAD functions 
-- ####################
/*
	LPAD function pads a string on the left
	
	RPAD function pads a string on the right
*/

SELECT LPAD ('Database', 15, '*');
SELECT RPAD ('Database', 15, '*');

SELECT LPAD ('111', 6, 'A');

-- Draw a quick chart on movies total revenues
SELECT 
	mv.movie_name,
	r.revenues_domestic,
	LPAD('*', CAST(TRUNC(r.revenues_domestic / 10) AS INT), '*') chart
FROM movies mv
INNER JOIN movies_revenues r ON r.movie_id = mv.movie_id
ORDER BY 3 DESC
NULLS LAST;









