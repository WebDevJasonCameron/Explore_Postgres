-- Display all array elements
-- #################################
-- unnest(anyarray)

SELECT 
	teacher_id,
	name,
	UNNEST(phones)
FROM teachers;
	
SELECT 
	teacher_id,
	name,
	UNNEST(phones)
FROM teachers
WHERE 
	name = 'Jeff';
	
-- ORDER BY phone numbers