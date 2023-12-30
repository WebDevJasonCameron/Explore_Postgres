-- 7. Combine all directors where nationality are American, Chinese and Japanese with 
-- all female actors

SELECT 
	first_name,
	last_name,
	'directors' AS "Tablename"
FROM directors
WHERE 
	nationality IN ('American', 'Chinese', 'Japanese')
UNION
SELECT
	first_name,
	last_name,
	'actors' AS "Tablename"
FROM actors
WHERE 
	gender = 'F'
ORDER BY "Tablename";
	
-- 8. Select the first name and last name of all directors and actors born after 1990

SELECT 
	first_name,
	last_name,
	date_of_birth,
	'directors' AS "Tablename"
FROM directors
WHERE 
	date_of_birth > '1990-12-31'
UNION
SELECT
	first_name,
	last_name,
	date_of_birth,
	'actors' AS "Tablename"
FROM actors
WHERE 
	date_of_birth > '1990-12-31'
ORDER BY 
	"Tablename",
	date_of_birth ASC;

-- 9. Select the first name and last name of all directors and actors where their first 
-- name starts with 'A'

SELECT 
	first_name,
	last_name,
	'directors' AS "Tablename"
FROM directors
WHERE 
	first_name LIKE 'A%'
UNION
SELECT
	first_name,
	last_name,
	'actors' AS "Tablename"
FROM actors
WHERE 
	first_name LIKE 'A%'
ORDER BY 
	"Tablename";






