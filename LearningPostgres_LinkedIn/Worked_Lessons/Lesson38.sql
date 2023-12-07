-- ASSIGNING COLUMN ALIAS TO AN EXPRESSION
-- #########################################

-- 1. Lets get first_name, last_name from actors table

SELECT first_name, last_name FROM actors;

-- 2. Can we combine first_name, last_name columns together to make "full name"

SELECT first_name || ' ' ||  last_name AS "Full Name" FROM actors;

-- 3. Can I use expression to get output without using a table column

SELECT 2 * 10 AS answer;