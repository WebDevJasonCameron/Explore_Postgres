-- Type conversion
-- ################
/*
	1. A data converted from its ORIGINAL data type to ANOTHER data type, it is 
	   called 'Type Conversion'
	   
	2. Two type of conversions
	
	   - Implicit		data conversion is done AUTOMATICALLY
	   - Explicit		data conversion is done via 'conversion functions' 
	   					e.g. Cast or ::
*/
-- 1. Type conversion examples:
SELECT * FROM movies;

-- integer = integer
SELECT * FROM movies
WHERE movie_id = 1;

-- integer = string
SELECT * FROM movies
WHERE movie_id = '1';

-- 2. Explicit
SELECT * FROM movies
WHERE movie_id = integer '1';














