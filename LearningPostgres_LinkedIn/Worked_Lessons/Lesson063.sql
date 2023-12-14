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
