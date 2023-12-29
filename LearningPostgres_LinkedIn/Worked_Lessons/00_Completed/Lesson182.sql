-- How to INNER JOIN tables with different columns data types
-- #############################################################

-- 1. Create table with INT

CREATE TABLE t1 (test INT);

-- 2. Create table with VARCHAR

CREATE TABLE t2 (test VARCHAR(10));

-- 3. Join them?

SELECT *
FROM t1
INNER JOIN t2 ON t1.test = t2.test;				-- <- NOT like this

-- 4. Iff different column data type, use CAST

SELECT *
FROM t1
INNER JOIN t2 ON t1.test = CAST(t2.test AS INT);

-- OR

SELECT *
FROM t1
INNER JOIN t2 ON CAST(t1.test AS VARCHAR) = t2.test;	

-- 5. Add data

INSERT INTO t1 (test) VALUES (1), (2);
INSERT INTO t2 (test) VALUES (1), (2);

SELECT * FROM t1;
SELECT * FROM t2;

