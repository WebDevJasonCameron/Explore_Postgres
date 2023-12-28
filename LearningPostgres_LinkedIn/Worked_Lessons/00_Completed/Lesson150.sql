-- Converting Strings to Dates format
-- ####################################

-- 1. String to YYYY-MM-DD format from ISO format
SELECT 
	TO_DATE('2020-01-01', 'YYYY-MM-DD');

SELECT 									-- ERROR
	TO_DATE('20200101', 'YYYY-MM-DD');
	
SELECT 
	TO_DATE('2020-01-01', 'YYYYMMDD');
	
-- String to DD-MM-YYYY format
SELECT 
	TO_DATE('01-01-2020', 'DD-MM-YYYY');

-- If input string is not in format
SELECT 											-- ERROR
	TO_DATE('2020-01-01', 'DD-MM-YYY');

-- 2. String to YYYY-MM-DD format from long date
SELECT 
	TO_DATE('December 1, 2020', 'Month DD, YYYY');
	
-- 3. String to YYYY-MM-DD format from short date
SELECT 													-- ERROR
	TO_DATE('Dec 1, 2020', 'Month DD, YYYY');

SELECT 
	TO_DATE('Dec 1, 2020', 'Mon DD, YYYY');

SELECT 
	TO_DATE('8th Dec, 2020', 'DDth Mon, YYYY');












