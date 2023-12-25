-- TRIM, BTRIM, LTRIM and RTRIM functions
-- ########################################
/*
	TRIM	removes the longest string that contains a specific character from a 
			string
	
	LTRIM	removes all characters, spaces by default, from the beginning of a
			string
			
	RTRIM	removes all characters, spaces by default, from the end of a string
	
	BRIM 	is the comibnation of the LTRIM() and RTRIM functions
*/

-- The TRIM() function removes the longest string that a specific character
-- from a string 

SELECT 
	TRIM (
		LEADING
		FROM 
			'   Amazing PostgreSQL'
	),
	TRIM (
		TRAILING
		FROM 
			'   Amazing PostgreSQL   '
	),
	TRIM (
			'   Amazing PostgreSQL   '
	);
/*	Returns
	"Amazing PostgreSQL"
	"Amazing PostgreSQL"
	"Amazing PostgreSQL"
*/


-- Removing say leading zer (0) from a number
SELECT
	TRIM (
		LEADING '0'
		FROM
			CAST (000123456 AS TEXT)
	);

-- "ummy"
SELECT
	LTRIM('yummy', 'y');

-- "yumm"
SELECT
	RTRIM('yummy', 'y');	
	
SELECT
	BTRIM('yummy', 'y');


