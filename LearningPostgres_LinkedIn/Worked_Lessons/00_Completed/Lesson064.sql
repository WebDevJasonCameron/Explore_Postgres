-- Numbers Data types
-- ####################

-- Lets create a table with SERIAL data type

CREATE TABLE table_serial(
	product_id SERIAL,
	product_name VARCHAR(100)
);

-- Lets insert some data

INSERT INTO table_serial (product_name)
VALUES
	('pen'),
	('pencil')
;

SELECT * FROM table_serial;

INSERT INTO table_serial (product_name)
VALUES
	('pencil2')
;
