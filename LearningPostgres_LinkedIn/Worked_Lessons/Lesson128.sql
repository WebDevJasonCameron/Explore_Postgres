-- LEFT and RIGHT functions

-- PostgreSQL LEFT() function returns the first n characters in the string
SELECT LEFT ('ABCD', 1);

-- n is -1, therefore, the LEFT() rnction returns all character except
-- the last 1 character
SELECT LEFT ('ABC', -1);

SELECT 
	LEFT (first_name, 1) AS initial
FROM directors
ORDER BY 1;











