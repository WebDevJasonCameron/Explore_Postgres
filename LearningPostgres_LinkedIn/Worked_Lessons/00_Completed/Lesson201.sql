-- Union tables with different number of columns
-- ##############################################

-- Create tables

CREATE TABLE table1 (
	col1 INT,
	col2 INT
);

CREATE TABLE table2 (
	col3 INT
);

-- Use UNION with NULL

SELECT 
	col1,
	col2
FROM table1
UNION
SELECT
	NULL as col1,
	col3
FROM table2