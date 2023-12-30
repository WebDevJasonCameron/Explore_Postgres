-- Schema Hierarchy
-- ####################

/*
	Physical		: 		host > cluster > db > schema > obj name
	
	Object access	: 		database.schema.object_name
						eg: hr.public.employees
*/

-- 1. Create a new db called "test"

CREATE DATABASE test;

-- 2. Select table from 'public' schema

SELECT *
FROM public.employees;

-- 3. Select a table other than 'public' schema

SELECT * FROM humanresources.employees;

















