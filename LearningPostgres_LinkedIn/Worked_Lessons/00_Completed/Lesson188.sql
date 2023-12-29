-- 5. Count all movies for each directors

SELECT 
	d.first_name,
	d.last_name,
	
	COUNT(*) AS "Total Movies"
	
FROM directors d
RIGHT JOIN movies m ON m.director_id = d.director_id
GROUP BY 
	d.first_name,
	d.last_name
ORDER BY 
	COUNT(*) DESC,
	d.first_name;

-- 6. Get all total revenues done by each films for each directors

SELECT 
	d.first_name,
	d.last_name,
	
	SUM(r.revenues_domestic + r.revenues_international) AS "Total Revenues"
	
FROM directors d
RIGHT JOIN movies m ON m.director_id = d.director_id
LEFT JOIN movies_revenues r ON r.movie_id = m.movie_id
GROUP BY 
	d.first_name,
	d.last_name
HAVING SUM(r.revenues_domestic + r.revenues_international) > 100
ORDER BY 
	3 DESC NULLS LAST,
	d.first_name;