-- Use ORDER BY to sort rows by expression
-- ########################################

-- 1. Let get all records of actors table

SELECT * FROM actors;

-- 2. Lets calculate the length of the actor name with LENGTH function

SELECT 
	first_name,
	LENGTH(first_name) AS len
FROM 
	actors;

-- 3. Lets sort rows by length of the actor name in descending order


SELECT 
	first_name,
	LENGTH(first_name) AS len
FROM 
	actors
ORDER BY 
	len DESC;