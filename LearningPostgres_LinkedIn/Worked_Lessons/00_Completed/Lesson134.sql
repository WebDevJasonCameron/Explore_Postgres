-- POSITION function
-- ##########################
/*
	1. PostgreSQL POSITION() function returns the location of a substring in
	   in a string
	   
	2. POSITION(substring in string)
	
	3. Returns an integer that represents the location of the substring within
	   the string
	   
	4. Returns the frist instance of the substring in the string
	
	5. Searches for the substring case-insensitively
*/

SELECT POSITION ('Amazing' IN 'Amazing Smash');

SELECT POSITION ('is' IN 'This is a computer');

SELECT POSITION ('A' IN 'KlickAnalytics.com');










