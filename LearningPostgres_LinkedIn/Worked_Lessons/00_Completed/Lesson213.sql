-- Using Array functions
-- ########################

-- Constructing arrays and ranges
/*
	range_type (lower bound, upper bound)
		range_type: INT4RANGE, INT8RANGE, NUMRANGE, TSRANGE, TSTZRANGE, DATERANGE
		
	range_type (lower bound, upper bound, open_close)
		open_close: '[]'
					'[)'
					'(]'
					'()'
					
					[] indicates the range is closed
					() indicates the range is open


*/ 

SELECT 
	INT4RANGE(1, 6)									AS "Default [( = closed - opened)]",
	NUMRANGE(1.4213, 6.2986, '[]')					AS "[] closed - closed",
	DATERANGE('20100101', '20201220', '()')			AS "Dates () = opened - opened",
	TSRANGE(LOCALTIMESTAMP, LOCALTIMESTAMP + INTERVAL '8 DAYS', '(]')
													AS "opened - closed"


-- Constructing arrays
/*
	Array [value1, value2, value3, value4]
*/

SELECT
	ARRAY[1, 2, 3] 							AS "INT arrays",
	ARRAY[2.12225::FLOAT]					AS "Floating numbers with putting explicit typing",
	ARRAY[CURRENT_DATE, CURRENT_DATE + 5]	AS "Dates"



