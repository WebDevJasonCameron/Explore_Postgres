-- Array data types
-- ####################

/*
	1. Every data type has its own companion array type e.g.,
	
		- integer has an integer[] array type,
		- character has character[] array type
		
	2. An array data type is named by appending square brackets ([])
	   to the data type name of the array elements
	   
		variable []
		
		phones TEXT []
		
		class_name VARCHAR][]
*/

-- 1. Create sample table
CREATE TABLE table_array (
	id SERIAL,
	name VARCHAR(100),
	phones TEXT [] 					-- <- OUR ARRAY
);


-- 2. Insert data
INSERT INTO table_array 
	(name, phones)
VALUES
	('Adam', ARRAY ['(800)123-4567', '(888)123-4567']);

INSERT INTO table_array
	(name, phones)
VALUES
	('LINDA', ARRAY ['(206)123-4567', '(214)123-4567']);

-- 3. Query data
SELECT * FROM table_array;

SELECT 
	name,
	phones [1]
FROM 
	table_array;
	
SELECT * 
FROM table_array
WHERE
	phones[2] = '(214)123-4567';


