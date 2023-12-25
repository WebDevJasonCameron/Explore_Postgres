-- STRPOS function
-- ##################

SELECT STRPOS('World Bank', 'Bank');

SELECT 
	first_name,
	last_name
FROM directors
WHERE STRPOS(last_name, 'on') > 0; -- <- Position is greater than zero


/*
 	difference between STRPOS and POSITION functs
	
	1. Those functions do the exactly same... syntax differs
	
	2. Reason to use: ANSI SQL is defined
	
*/