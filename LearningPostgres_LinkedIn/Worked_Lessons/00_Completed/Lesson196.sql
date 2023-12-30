-- Append tables with different columns
-- ###################################

-- We have:

-- * table1 with columns : add_date, col1, col2, col3
-- * table2 with columns : add_date, col1, col2, col3, col4, col5

-- 1 create tables

CREATE TABLE table1 (
	add_date DATE,
	col1 INT,
	col2 INT,
	col3 INT
);

CREATE TABLE table2 (
	add_date DATE,
	col1 INT,
	col2 INT,
	col3 INT,
	col4 INT,
	col5 INT
);

SELECT * FROM table1;
SELECT * FROM table2;

-- 2. Add data

INSERT INTO table1
	(add_date, col1, col2, col3)
VALUES
	('2020-01-01', 1, 2, 3),
	('2020-01-02', 4, 5, 6);
	
INSERT INTO table2
	(add_date, col1, col2, col3, col4, col5)
VALUES
	('2020-01-01', NULL, 7, 8, 9, 10),
	('2020-01-02', 11, 12, 13, 14, 15),
	('2020-01-03', 16, 17, 18, 19, 20);

DROP TABLE table1;
DROP TABLE table2;

-- 3. Conbine the together

-- SELECT COALESCE(100,2);
-- SELECT COALESCE(table1.col1, table2.col1)

SELECT 
	COALESCE(t1.add_date, t2.add_date) AS "Add Date",
	COALESCE(t1.col1, t2.col1) AS "Col 1",
	COALESCE(t1.col2, t2.col2) AS "Col 2",
	COALESCE(t1.col3, t2.col3) AS "Col 3",
	t2.col4 AS "Col 4",
	t2.col5 AS "Col 5"
	
FROM table1 t1 
FULL OUTER JOIN table2 t2 ON (t1.add_date = t2.add_date);






