-- Using ORDER BY with NULL values
-- ################################

-- NULL is a marker that indicates
-- * Either its a missing data or the data is unknown

-- When you sort rows that contains NULL, you can specifiy the order of NULL with other non-null values by
-- using the NULLS FIRST or NULLS LAST option of the ORDER BY clause

/*
SELECT
	column_list
FROM tablename
ORDER BY
	sort_expression [ASC | DESC] [NULLS FIRST | NULLS LAST]
*/

-- 1. To demonstrate, lets create a table called demo_sorting

CREATE TABLE demo_sorting
(
	num INT
);

-- 2. Insert some data with Null values into demo_sorting table

INSERT INTO demo_sorting (num)
VALUES
	(1),
	(2),
	(3),
	(NULL);

-- 3. Get all records

SELECT * FROM demo_sorting;

-- 4.  Get all records from demo_sorting, and sort num on ascending values

SELECT * FROM demo_sorting ORDER BY num ASC;

SELECT * FROM demo_sorting ORDER BY num DESC;

SELECT * FROM demo_sorting ORDER BY num NULLS LAST;

SELECT * FROM demo_sorting ORDER BY num NULLS FIRST;

SELECT * FROM demo_sorting ORDER BY num DESC NULLS LAST;

