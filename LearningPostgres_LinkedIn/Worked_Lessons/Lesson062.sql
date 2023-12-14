-- Boolean data type

-- 1. Lets create a sample table called 'table_boolean'

CREATE TABLE table_boolean(
	product_id SERIAL PRIMARY KEY,
	is_available BOOLEAN NOT NULL
);

-- 2. Lets insert some data

INSERT INTO table_boolean(is_available)
VALUES
	(TRUE)
;

-- 3. Lets view the records

SELECT * FROM table_boolean;