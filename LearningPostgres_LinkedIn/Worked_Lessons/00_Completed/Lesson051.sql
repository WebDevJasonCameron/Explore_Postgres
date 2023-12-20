-- 1. Use column aliases with WHERE? <- No

SELECT 
	first_name,
	last_name AS surname
FROM 
	actors
WHERE
	last_name = 'Allen';