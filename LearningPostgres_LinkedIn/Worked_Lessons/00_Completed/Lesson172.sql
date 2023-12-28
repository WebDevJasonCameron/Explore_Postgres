-- Order of execution in GROUP BY
-- ###############################

-- PostgreSQL evaluates the GROUP BY clause after the FROM and WHERE clauses and 
-- before the HAVING SELECT, DISTINCT, ORDER BY and LIMIT clauses

-- 
FROM 

WHERE -- conditions

GROUP BY -- group sets

HAVING -- filter again

SELECT -- columns

DISTINCT -- unique columns if you use DISTINCT

ORDER BY 

LIMIT -- filter records

-- 
