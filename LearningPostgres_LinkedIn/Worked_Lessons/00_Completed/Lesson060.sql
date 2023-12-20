-- Concatenate techniques
-- ########################

-- 1. Lets combine string 'hello' and 'world'

SELECT 'hello' || ' ' || 'world';


-- 2. Lets combinee actor first and last name as 'Actor Name'

SELECT 
	first_name || ' ' || last_name AS "Actor Name"
FROM actors
ORDER BY
	first_name
;

-- 3. Lets print first name, last name and date ov birth of all actors seperated by comma

SELECT 
	CONCAT_WS(',', first_name, last_name, date_of_birth)
FROM actors
ORDER BY
	first_name
;







