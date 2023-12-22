-- UNIQUE constraints
-- ######################

CREATE TABLE table_emails(
	id SERIAL PRIMARY KEY,
	emails TEXT UNIQUE
);

SELECT * FROM table_emails;

-- constraint name shows: tablename_columnname_key

INSERT INTO table_emails
	(emails)
VALUES
	('a@b.com'), 
	('smash@mail.com');
	
INSERT INTO table_emails
	(emails)
VALUES
	('a@b.com');


-- One Way
/*
CREATE TABLE table_products (
	id SERIAL PRIMARY KEY,
	product_code VARCHAR(10),
	product_name TEXT,
	UNIQUE (product_code, product_name)
);
*/

CREATE TABLE table_products (
	id SERIAL PRIMARY KEY,
	product_code VARCHAR(10),
	product_name TEXT
);

-- Now create unique constraints
/*
ALTER TABLE tablename
ADD CONSTRAINTS yourname UNIQUE (col1, col2, ....)
*/
ALTER TABLE table_products
ADD CONSTRAINT unique_products_code UNIQUE (product_code, product_name);

INSERT INTO table_products 
	(product_code, product_name)
VALUES
	('A', 'apple');
	
INSERT INTO table_products 				-- <- ERROR
	(product_code, product_name)
VALUES
	('A', 'apple');
	
INSERT INTO table_products 				-- <-- Works
	(product_code, product_name)
VALUES
	('A1', 'apple');
	
INSERT INTO table_products 				-- <-- Works
	(product_code, product_name)
VALUES
	('apple', 'A');
	
SELECT * FROM table_products;