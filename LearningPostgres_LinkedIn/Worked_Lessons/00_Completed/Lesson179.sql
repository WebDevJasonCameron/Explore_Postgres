-- 4 Select movie name, director name, domestic revenues for all japanese movies

SELECT 
	m.movie_name,
	
	d.first_name,
	d.last_name,
	
	r.revenues_domestic
FROM movies m
INNER JOIN directors d ON m.director_id = d.director_id
INNER JOIN movies_revenues r ON m.movie_id = r.movie_id
WHERE 
	m.movie_lang = 'Japanese';
	
	
-- 5. Select movie name, director name for all English, Chinese, and Japanese movies where 
-- domestic revenues is greater than 100

SELECT 
	m.movie_name,
	
	d.first_name,
	d.last_name,
	
	r.revenues_domestic
FROM movies m
INNER JOIN directors d ON m.director_id = d.director_id
INNER JOIN movies_revenues r ON m.movie_id = r.movie_id
WHERE 
	m.movie_lang IN ('English', 'Chinese', 'Japanes')
	AND r.revenues_domestic > 100
ORDER BY 4 DESC;





