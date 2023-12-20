-- Character Data Types
-- ####################

-- 1. Create table_encoding table

SELECT CAST ('Jason' AS character(10)) as "Name";


SELECT 'Jason'::char(10) as "Name";

SELECT 
	CAST ('Jason' AS character(10)) as "Name1",
	'Jason'::char(10) as "Name"	
;
-- "Jason     "
-- "Jason     "

SELECT 'Jason'::varchar(10);
-- "Jason"

SELECT 'This is a test from the system'::varchar(10);
-- "This is a "

SELECT 'ABCD 123'::varchar(10);
-- "ABCD 123"


CREATE TABLE table_characters(
	col_char CHAR(10), 
	col_varchar VARCHAR(10), 
	col_text TEXT
);

SELECT * FROM table_characters;

INSERT INTO table_characters (col_char, col_varchar, col_text)
VALUES
	('ABC', 'ABC', 'ABC'),
	('xyz', 'xyz', 'xyz')
;
