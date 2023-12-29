-- 4. Use movies tables for joins
-- List all the movies with directors first and last names and movie name

SELECT
	d.first_name,
	d.last_name,
	
	m.movie_name
FROM directors d
LEFT JOIN movies m ON d.director_id = m.director_id
ORDER BY d.last_name;

-- 5. Reverse the left tables


SELECT
	d.first_name,
	d.last_name,
	
	m.movie_name
FROM movies m
LEFT JOIN directors d ON d.director_id = m.director_id
ORDER BY d.last_name;

-- Add a record into directors table

INSERT INTO directors
	(first_name, last_name, date_of_birth, nationality)
VALUES
	('James', 'David', '2010-01-01', 'American');