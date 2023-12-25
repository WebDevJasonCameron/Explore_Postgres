-- UPPER, LOWER and INITCAP

SELECT UPPER('amazing postgresql');

SELECT
	UPPER (first_name) AS "First Name",
	UPPER (last_name) AS "Last Name"
FROM directors;

-- lower

SELECT LOWER('Amazing PostgreSQL');

-- initcap
SELECT INITCAP ('the world is changing with a lightning speed');