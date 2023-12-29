-- 9. Get all the total revenues done by each films for each directors
-- What is the first table or left table : films or directors

SELECT 
	d.first_name,
	d.last_name,
		
	SUM(r.revenues_domestic + r.revenues_international) AS "Total Revenues"
FROM directors d
LEFT JOIN movies m ON d.director_id = m.director_id
LEFT JOIN movies_revenues r ON m.movie_id = r.movie_id
GROUP BY 
	d.first_name,
	d.last_name
HAVING SUM(r.revenues_domestic + r.revenues_international) > 0 
ORDER BY 3 DESC ;
