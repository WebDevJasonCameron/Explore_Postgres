-- 6. Add WHERE condition, say get list of English and Chinese movies only

SELECT
	d.first_name,
	d.last_name,
	
	m.movie_name,
	m.movie_lang
FROM directors d
LEFT JOIN movies m ON m.director_id = d.director_id
WHERE
	m.movie_lang IN ('English', 'Chinese');

-- 7. Count all movies for each director

SELECT
	d.first_name,
	d.last_name,
	
	count(*) AS "Total Movies"
FROM directors d
LEFT JOIN movies m ON m.director_id = d.director_id
GROUP BY 
	d.first_name,
	d.last_name
ORDER BY COUNT(*) DESC;

-- 8. Get all the movies with age certification for all directors where nationality are
-- 'American', 'Chinese', and 'Japanes'

SELECT 
	*
FROM directors d
LEFT JOIN movies m ON d.director_id = m.director_id
WHERE 
	d.nationality IN ('American', 'Chinese', 'Japanese')
	AND m.age_certificate IS NOT NULL
ORDER BY 
	m.age_certificate;














