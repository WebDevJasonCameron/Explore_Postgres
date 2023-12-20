-- How to use column name or column number in ORDER BY clause
-- ##########################################################

-- 1. Let view all records of actors

SELECT * FROM actors;

-- 2. Sort all records by first_name asc, date_of_birth descending

SELECT * FROM actors
ORDER BY 
	first_name ASC,
	date_of_birth DESC;
	
-- 3. Now use column nuber instead of column name for sorting

SELECT 
	first_name,
	last_name,
	date_of_birth
FROM actors
ORDER BY 
	first_name ASC,
	date_of_birth DESC;


SELECT 
	first_name,
	last_name,
	date_of_birth
FROM actors
ORDER BY 
	1 ASC,
	3 DESC;