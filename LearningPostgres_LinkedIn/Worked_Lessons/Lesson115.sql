-- Check Constraint
-- ######################

CREATE TABLE staff(
	staff_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	birth_date DATE CHECK (birth_date > '1900-01-01'),
	joined_date DATE CHECK (joined_date > birth_date),
	salary numeric CHECK (salary > 0)
);


SELECT * FROM staff;
 
INSERT INTO staff 
	(first_name, last_name, birth_date, joined_date, salary)
VALUES
	('Adam', 'Kink', '1990-01-01', '2002-01-01', 100);


-- ERRORS
INSERT INTO staff 
	(first_name, last_name, birth_date, joined_date, salary)
VALUES
	('John', 'Adams', '2020-01-01', '2020-01-01', 100);

-- WORKS
INSERT INTO staff 
	(first_name, last_name, birth_date, joined_date, salary)
VALUES
	('John', 'Adams', '2010-01-01', '2020-01-01', 100);

-- ERRORS
INSERT INTO staff 
	(first_name, last_name, birth_date, joined_date, salary)
VALUES
	('John', 'Adams', '2020-01-01', '2020-01-01', -1);
	
	
	
	
	
	
	
	





