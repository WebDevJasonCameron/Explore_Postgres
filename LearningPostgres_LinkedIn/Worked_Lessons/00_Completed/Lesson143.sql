-- GREATEST and LEAST functions 
-- ################################

-- 1. Examples
SELECT GREATEST(200, 20, 2);

SELECT LEAST(200, 20, 2);

-- 2. Common data type
SELECT GREATEST ('A', 'B', 'C');

SELECT LEAST ('A', 'B', 'C');

SELECT GREATEST (1, 'B', 'C');		-- <- ERROR

-- 3. GREATEST LEAST movie revenues
SELECT 
	movie_id,
	revenues_domestic,
	revenues_international, 
	GREATEST(revenues_domestic, revenues_international) AS "Greatest"
FROM movies_revenues;

SELECT 
	movie_id,
	revenues_domestic,
	revenues_international, 
	LEAST(revenues_domestic, revenues_international) AS "Least"
FROM movies_revenues;