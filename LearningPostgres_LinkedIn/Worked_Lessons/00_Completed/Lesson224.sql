-- Query array data
-- ###################

-- 1. Find all phone records

SELECT 
	name,
	phones
FROM teachers;

-- How to access array elements?

SELECT 
	name,
	phones[1]
FROM teachers;

-- 2. Use filter conditions

SELECT *
FROM teachers
WHERE phones[1] = '(111)-222-3333';

-- How about search any arrays for all rows
SELECT *
FROM teachers
WHERE '(111)-222-3333' = ANY(PHONES);













