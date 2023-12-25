-- LENGTH function
-- ###################

-- length
SELECT LENGTH ('Amazing Smash');

SELECT LENGTH (CAST (1001234 AS TEXT));

SELECT LENGTH ('What is the length of this string');

SELECT CHAR_LENGTH('');
SELECT CHAR_LENGTH(' ');
SELECT CHAR_LENGTH(NULL);

SELECT 
	first_name || ' ' || last_name AS full_name,
	LENGTH (first_name || ' ' || last_name) AS full_name
FROM
	directors
ORDER BY 
	2 DESC;
	
	
	
	
	
	
	
	
	
	
	
	