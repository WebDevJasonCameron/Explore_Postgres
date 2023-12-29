-- 7. What were the top 10 most profitable movies between year 2005 and 2006.  
-- Print the movie name, director name, movie language and total revenues

SELECT 
	m.movie_name,
	m.movie_lang,
	m.release_date,
	
	d.first_name,
	d.last_name,
	
	r.revenues_domestic,
	r.revenues_international,
	(r.revenues_domestic + r.revenues_international) AS "Total Revenues"
FROM movies m
INNER JOIN directors d ON m.director_id = d.director_id
INNER JOIN movies_revenues r ON m.movie_id = r.movie_id
WHERE
	m.release_date BETWEEN '2005-01-01' AND '2008-12-31'
ORDER BY 7 DESC NULLS LAST
LIMIT 10;