-- Handling Null values with GROUP BY
-- #####################################

-- 1. Create test table

CREATE TABLE employees_test(
	employee_id SERIAL PRIMARY KEY,
	employee_name VARCHAR(100),
	department VARCHAR(100),
	salary INT
);

-- 2. View Content

SELECT * FROM employees_test;

-- 3. Add data

INSERT INTO employees_test
	(employee_name, department, salary)
VALUES
	('Jogn', 'Finance', 2500),
	('Mary', NULL , 3000),
	('Adam', NULL , 4000), 
	('Bruce', 'Finance', 4000),
	('Linda', 'IT', 5000),
	('Megan', 'IT', 4000);

-- 4. Dispay all departments

SELECT 
	employee_name,
	department,
	salary
FROM
	employees_test
ORDER BY
	department;

-- 5. Count employees for each group

SELECT 
	department,
	COUNT(employee_name) AS total_employees
FROM
	employees_test
GROUP BY 
	department
ORDER BY
	department;

-- 6. Handle NULL values
-- COALESCE(source, '')
-- COALESCE(department, 'NO DEPARTMENT')

SELECT 
	COALESCE(department, 'NO DEPARTMENT') AS department,
	COUNT(employee_name) AS total_employees
FROM
	employees_test
GROUP BY 
	department
ORDER BY
	department;






