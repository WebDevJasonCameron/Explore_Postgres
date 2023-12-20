-- Composit data types
-- #######################
/*
	1. List of field names with corresponding data types
	2. Used in a table as a 'collumn'
	3. Used in functions or procedures
	4. Can return multiple values, its a composite data type
	
	CREATE TYPE name AS (fields columns_properites)
*/

CREATE TYPE address AS (
	CITY varchar(50),
	country VARCHAR(20)
);

CREATE TABLE companies(
	comp_id SERIAL PRIMARY KEY,
	address address
);

INSERT INTO companies 
	(address)
VALUES
	(ROW('LONDON', 'UK'));
	
INSERT INTO companies 
	(address)
VALUES
	(ROW('NEW YORK', 'US'));

SELECT * FROM companies;

-- (composite_column).field

SELECT (address).country FROM companies;


-- Multi Table:
-- (tablename.composite_column).field






