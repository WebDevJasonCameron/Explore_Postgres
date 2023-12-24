-- Blank SQL file for Lesson 116
CREATE TABLE prices (
	price_id SERIAL PRIMARY KEY,
	product_id INT NOT NULL,
	price NUMERIC NOT NULL,
	discount NUMERIC NOT NULL,
	valid_from DATE NOT NULL
);

-- price > 0 and discount >= 0 and price > discount

ALTER TABLE prices
ADD CONSTRAINT price_check
CHECK (
	price > 0
	AND discount >= 0
	AND price > discount
);

-- Insert
-- Works
INSERT INTO prices
	(product_id, price, discount, valid_from)
VALUES
	('1', 100, 20, '2020-10-01');
	
-- Errors
INSERT INTO prices
	(product_id, price, discount, valid_from)
VALUES
	('2', 100, 120, '2020-10-01');
	
SELECT * FROM prices;

-- Rename constraint to existing table
ALTER TABLE prices
RENAME CONSTRAINT price_check TO price_discount_check;

-- Drop Constraint
ALTER TABLE prices
DROP CONSTRAINT price_discount_check;

-- Add new one
ALTER TABLE prices
ADD CONSTRAINT price_discount_check
CHECK (
	price > 0
	AND discount >= 10
	AND price > discount
);