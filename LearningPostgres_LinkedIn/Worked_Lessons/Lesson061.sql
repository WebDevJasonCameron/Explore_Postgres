-- When concatenation, how NULL values are handled
-- ###############################################

-- Using ||

Select 'Hello' || NULL || 'World';

-- Using Concat

SELECT 
	revenues_domestic,
	revenues_international,
	CONCAT(' | ', revenues_domestic, revenues_international) AS profits
FROM movies_revenues
;

SELECT 
	revenues_domestic,
	revenues_international,
	CONCAT_WS(' - ', revenues_domestic, revenues_international) AS profits
FROM movies_revenues
;