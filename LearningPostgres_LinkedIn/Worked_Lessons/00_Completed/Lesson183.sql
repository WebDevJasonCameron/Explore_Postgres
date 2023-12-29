-- LEFT Joins
-- #####################

-- * Returns every row from the LEFT table PLUS rows that match values in the joined
-- column from the right table
-- * When a left table row doesn't have a match in the right table, the result shows no
-- values from the right table

/*
	SELECT
		table1.column1,
		table2.column1
	FROM table1
	LEFT JOIN table2 ON table1.column1 = table2.column2
*/

-- 1. Create tables

CREATE TABLE left_products (
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(100)
);

CREATE TABLE right_products (
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(100)
);

-- 2. Add data

INSERT INTO left_products
	(product_id, product_name)
VALUES
	(1, 'Computser'),
	(2, 'Laptops'),
	(3, 'Monitors'),
	(5, 'Mics');

SELECT * FROM left_products;

INSERT INTO right_products
	(product_id, product_name)
VALUES
	(1, 'Computser'),
	(2, 'Laptops'),
	(3, 'Monitors'),
	(4, 'Pen'),
	(5, 'Papers');

SELECT * FROM right_products;


-- 3. LEFT JOIN

SELECT 
	*
FROM left_products
LEFT JOIN right_products ON left_products.product_id = right_products.product_id;






