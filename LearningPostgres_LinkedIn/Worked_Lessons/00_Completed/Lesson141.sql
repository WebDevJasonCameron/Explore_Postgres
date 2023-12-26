-- SUM function
-- #############

-- 1. all movies revenues records
SELECT * FROM movies_revenues;

-- 2. Get total domestic revenues for all movies
SELECT 
	SUM(revenues_domestic)
FROM movies_revenues;

-- 3. Get total domestic revenues for all moves where domstic revenue is 
--    greater than 200
SELECT 
	SUM(revenues_domestic)
FROM movies_revenues
WHERE 
	revenues_domestic > 200;
	
-- 4. Find the total movie length of all english language movies
SELECT 
	SUM(movie_length)
FROM movies
WHERE movie_lang = 'English';

-- Sum all movies names?  <-- Error
SELECT 
	SUM(movie_name)
FROM movies;


-- 5. SUM with DISTINCT
-- total domestic revenues for all movies
SELECT
	SUM(DISTINCT(revenues_domestic))
FROM movies_revenues;


-- 6. 
SELECT * FROM movies_revenues
ORDER BY revenues_domestic;

