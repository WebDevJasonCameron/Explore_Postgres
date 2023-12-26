-- Combining columns using Mathematical Operators
-- ##############################################

-- 1. Practice
SELECT 2 + 10 AS addition;

SELECT 2 - 10 AS subtraction;

SELECT 2 * 10 AS multiplication;

SELECT 10 / 2 AS divition;

SELECT 11 % 2 AS modulation;

SELECT 11/2::numeric(10, 2) AS divition_with_descimal;

-- 3 Combin table columns
-- Get total reveues for all movies from movies_revenues table
SELECT * FROM movies_revenues;

SELECT 
	movie_id,
	revenues_domestic,
	revenues_international,
	(revenues_domestic + revenues_international) as "Total Revenues"
FROM movies_revenues;

-- 4. Order by heighest revenues movies
SELECT 
	movie_id,
	revenues_domestic,
	revenues_international,
	(revenues_domestic + revenues_international) as "Total Revenues"
FROM movies_revenues
ORDER BY 4 DESC NULLS LAST;

-- REMOVE NULL
SELECT 
	movie_id,
	revenues_domestic,
	revenues_international,
	(revenues_domestic + revenues_international) as "Total Revenues"
FROM movies_revenues
WHERE (revenues_domestic + revenues_international) IS NOT NULL
ORDER BY 4 DESC NULLS LAST;








