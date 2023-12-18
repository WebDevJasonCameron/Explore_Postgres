-- Using CAST for data conversion
-- ###############################

-- PostgreSQL CAST operator is used to convert a value of one type to another data 
-- type

CAST (EXPRESSION AS target_data_type);

/*
	expression 			Can be constant, a table column, or an expression
	
	target_data_taype	Boolean
						Character (char, varchar, text)
						Numeric (int, float)
						Array
						JSON
						UUID
						hstore (stores as key/value pairs)
						Temporal (date, time, timestamp, interval)
						Special (network address, geometric)
*/

-- 1. String to int 
SELECT 
	CAST ('10' AS INTEGER);

SELECT 
	CAST ('10n' AS INTEGER);

-- 2. String to data
SELECT 
	CAST('2020-01-01' AS DATE),
	CAST('01-MAY-2020' AS DATE);

-- 3. String to Bool
SELECT 
	CAST('true' AS BOOLEAN),
	CAST('false' AS BOOLEAN),
	CAST('T' AS BOOLEAN),
	CAST('F' AS BOOLEAN);
	
SELECT 
	CAST('0' AS BOOLEAN),
	CAST('1' AS BOOLEAN),
	CAST(0 AS BOOLEAN),
	CAST(1 AS BOOLEAN);

-- 4. String to double
SELECT 
	CAST('14.78888' AS DOUBLE PRECISION);
	
	


