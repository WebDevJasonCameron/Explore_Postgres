-- Using TO_TIMESTAMP function
-- ##################################
SELECT 
	TO_TIMESTAMP('2020-01-01 10:30:20', 'YYYY-MM-DD HH:MI:SS');

SELECT 
	TO_TIMESTAMP('2020-01-01 10:30:20', 'YYYY-MM-DD');

SELECT 
	TO_TIMESTAMP('2020-01-01 10:30:20', 'YYYY-MM-DD HH');
	
-- TO_TIMESTAMP function validates the input string with minimal error check
SELECT 												-- ERROR
	TO_TIMESTAMP('2020-01-01 30:30:20', 'YYYY-MM-DD HH24:MI:SS');


-- Converting a string to a timestamp, the TO_TIMESTAMP() function treats
-- milliseconds or microseconds as the seconds after the decimal point
SELECT 
	TO_TIMESTAMP('2020-01-01 10:4', 'YYYY-MM-DD SS:MS');

-- 4 is not 4 milliscond but 400 

SELECT 
	TO_TIMESTAMP('2020-01-01 10:4', 'YYYY-MM-DD SS:MS'),
	TO_TIMESTAMP('2020-01-01 10:004', 'YYYY-MM-DD SS:MS');








