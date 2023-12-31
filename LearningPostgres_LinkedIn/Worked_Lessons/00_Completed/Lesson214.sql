-- Inclusion operators
-- @>, <@, &&

SELECT 
	ARRAY[1, 2, 3, 4] 	@> 	ARRAY[2, 3, 4] 		AS "Contains",
	ARRAY['a', 'b'] 	<@ 	ARRAY['a','b']		AS "Contained by",
	ARRAY[1, 2, 3, 4]	&& 	ARRAY[2, 3, 4]		AS "Is overlap"