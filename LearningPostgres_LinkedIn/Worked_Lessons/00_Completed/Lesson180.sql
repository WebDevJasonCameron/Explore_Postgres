-- Select movie name, director name, movie language, total revenues for all top 5 movies

SELECT
	m.movie_name,
	
	d.first_name,
	d.last_name,
	
	r.revenues_domestic,
	r.revenues_international,
	
	(r.revenues_domestic + r.revenues_international) AS "Total Revenues"
	
FROM movies m
INNER JOIN directors d ON m.director_id = d.director_id
INNER JOIN movies_revenues r ON m.movie_id = r.movie_id
ORDER BY 6 DESC NULLS LAST
LIMIT 5;

