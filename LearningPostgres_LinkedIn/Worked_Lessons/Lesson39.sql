-- Using ORDER BY to sort records
-- ##############################

-- When you query data from a table, the SELECT statement returns rows in the unspecified order.
-- To sort the rows of the result set, we use the ORDER BY clause in the SELECT statement.

/* 
SELECT 
	column_list
FROM tablename
ORDER BY
	sort_expression [ASC | DESC],
	...
	sort_expression [ASC | DESC]
*/

-- 1. Sort based on single column

SELECT *
FROM movies
ORDER BY 
	release_date ASC
;

-- 2. Sort based on single column by descending order

SELECT *
FROM movies
ORDER BY 
	release_date DESC
;

-- 3. Sort based on multiple columns

SELECT *
FROM movies
ORDER BY 
	release_date DESC,
	movie_name ASC
;












