-- DEFAULT constraints

CREATE TABLE employees (
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	is_enable VARCHAR(2) DEFAULT 'Y'
);

SELECT * FROM employees;

INSERT INTO employees
	(first_name, last_name)
VALUES
	('John', 'Adams');
	
ALTER TABLE employees
ALTER COLUMN is_enable
SET DEFAULT 'N';

ALTER TABLE employees
ALTER COLUMN is_enable
DROP DEFAULT;
