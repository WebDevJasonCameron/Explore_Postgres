-- LIKE and ILIKE operators
-- #########################

-- Operators to quesry data using 'pattern matchings'
-- Returns true or false
-- Both let you search for patterns in strings by using two speciaal characters:

--  %  	Percent sign (%) matches any sequence of zero or more characters
--  _ 	Underscore sign (_) matches any single character

-- 1. Full character search

SELECT 'hello' LIKE 'hello';

-- 2. Partial character search using '%'

SELECT 'hello' LIKE 'h%';

SELECT 'hello' LIKE '%e%';

SELECT 'hello' LIKE 'hell%';

SELECT 'hello' LIKE '%ll';

-- 3. Single character search using '_'

SELECT 'hello' LIKE '_ello';

-- 4. Checking occurance of search using '_'

SELECT 'hello' LIKE '__ll_';

-- 5. Using % and _ together

SELECT 'hello' LIKE '%ll_';

-- 6. Get all actors names where first name starting with 'A'

SELECT * 
FROM actors 
WHERE 
	first_name LIKE 'A%'
ORDER BY 
	first_name;









