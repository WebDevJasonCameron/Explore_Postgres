-- 6. UNION on data types which are not same?

SELECT 
	first_name,
	last_name,
	'directors' AS "Tablename"
FROM directors
UNION
SELECT
	gender, 
	last_name,
	'actors' AS "Tablename"
FROM actors
ORDER BY first_name ASC;