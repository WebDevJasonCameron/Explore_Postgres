-- to_char()
-- ################
/*
	1. PostgreSQL TO_CHAR() function converts
	   - a timestamp,
	   - an interval,
	   - an integer,
	   - a double precision,
	   - a numeric value
	   
	   to a string.
	   
	2. TO_CHAR(expression, format)
	
	3. Valid format options for numbers
	   
	   Format Description
	   9	Numeric value with the specified number of digits
	   0	Numeric value with leading zeros
	   .  	decimal point
	   D	decimal point that uses locale
	   , 	group thousands separator
	   FM 	Fill mode, which suppresses padding blanks and leading zeroes
	   PR 	negative value in angle brackets
	   S	Sign anchored to a number that uses loacale
	   L	Currency symbols that uses local
	   G 	GROUP SEPARATOR THAT USES LOCAL
	   MI	Minus sign in the specified position for numbers that are less than 0
	   PL 	Plus sign in the specified position for numbers that are greater than 0
	   SG	Plus / minus sign in the specified position 
	   RN 	Roman numeral that ranges from 1 to 3999
	   TH or th	Uppder case or lower case ordinal number suffix
	   
	   Valid timestamp format options
	   
	   Pattern	Description
	   -------	-------------------------------------------------------
	   Y,YYY	year in 4 digits with comma
	   YYYY		year in 4 digits
	   YYY		last 3 digits of year
	   YY		last 2 digits of year
	   Y		last digit of year
	   IYYY		ISO 8601 week-numbering year (4 or more digits)
	   IYY		Last 3 digits of ISO 8601 week-numbering year
	   IY		Last 2 digits of ISO 8601 week-numbering year
	   I		Last digit of ISO 8601 week-numbering year
	   BC, bc AD or ad		Era indicator without periods
	   ... More... look it all up!
	   
*/

-- Convert an int to string
SELECT 
	TO_CHAR(
	100870,
	'9,99999');

-- View movie release date in DD-MM-YYYY format
SELECT 
	release_date,
	TO_CHAR(release_date, 'DD-MM-YYYY'),
	TO_CHAR(release_date, 'Dy, MM, YYYY')
FROM movies;

-- converting timestamp literal to a string
SELECT 
	TO_CHAR(
		TIMESTAMP '2020-01-01 10:30:45',
		'HH24:MI:SS'
	);

-- Adding currency symbol to say movies revenues
SELECT 
	movie_id,
	revenues_domestic,
	TO_CHAR(revenues_domestic, '$99999D99')
FROM movies_revenues;





