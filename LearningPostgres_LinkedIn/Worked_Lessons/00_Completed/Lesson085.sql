-- TO_TIMESTAMP
-- ###################

-- LOOK UP FORMATS
SELECT TO_TIMESTAMP(
	'2020-10-28 10:30:25',
	'YYY-MM-DD HH:MI:SS'
);

-- Skip spaces
SELECT TO_TIMESTAMP(
	'2020         May',
	'YYYY MON'
);

-- MINIMAL ERROR CHECKING IS DONE 
SELECT
	TO_TIMESTAPM('2020-01-01 32:8:00', 'YYYY-MM-DD HH24:MI:SS');  -- ERROR

SELECT
	TO_TIMESTAPM('2020-01-01 21:8:00', 'YYYY-MM-DD HH24:MI:SS');



