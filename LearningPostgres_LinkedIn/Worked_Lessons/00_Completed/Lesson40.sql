-- Using ORDER BY with alias column name
-- ######################################

-- 1. Get first_name, last_name from actors table

SELECT
	first_name,
	last_name
FROM actors;

-- 2. Make an alias for last_nameas surname

SELECT
	first_name,
	last_name AS "Surname"
FROM actors;

-- 3 Sort rows by last_name

SELECT
	first_name,
	last_name AS "Surname"
FROM actors
ORDER BY 
	last_name;

-- 4. Dort rows by last_name DESC

SELECT
	first_name,
	last_name AS "Surname"
FROM actors
ORDER BY 
	last_name DESC;

-- 5. Use alias surname in ORDER BY clauses

SELECT
	first_name,
	last_name AS Surname
FROM actors
ORDER BY 
	Surname;


