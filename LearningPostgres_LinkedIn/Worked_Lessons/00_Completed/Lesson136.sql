-- SUBSTRING function
-- #####################

SELECT SUBSTRING ('What a wonderful world' FROM 1 FOR 4);

SELECT SUBSTRING ('What a wonderful world' FROM 8 FOR 10);

SELECT SUBSTRING ('What a wonderful world' FOR 7);

-- Get initials from directors table
SELECT 
	first_name,
	last_name,
	SUBSTRING(first_name, 1, 1) AS intial
FROM directors
ORDER BY
	last_name;








