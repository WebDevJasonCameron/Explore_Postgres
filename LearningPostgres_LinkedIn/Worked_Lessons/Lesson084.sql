-- TO_DATE()
-- ##############

-- LOOK UP VALID FORMATS
SELECT TO_DATE(
	'2020/10/22',
	'YYYY/MM/DD'
);

SELECT TO_DATE(
	'022199',
	'MMDDYY'
);

SELECT TO_DATE(
	'March 08, 2019',
	'Month DD, YYYY'
);

-- Error Handling
SELECT TO_DATE(
	'2020/02/30',
	'YYYY/MM/DD'
);








