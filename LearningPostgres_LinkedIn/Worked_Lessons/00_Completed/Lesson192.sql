-- 4. Query hierarchical data like all directors and movies

SELECT
	m1.movie_name,
	m2.director_id
	
FROM movies m1
INNER JOIN movies m2 ON m1.director_id = m2.director_id
ORDER BY 
	m2.director_id,
	m1.movie_name
