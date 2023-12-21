-- Example 3: Create a currency ENUM data type with currency data

CREATE TYPE currency AS ENUM ('USD', 'EUR', 'GBP');

SELECT 'USD'::currency;

ALTER TYPE currency ADD VALUE 'CHF' AFTER 'EUR';

CREATE TABLE stocks (
	stock_id SERIAL PRIMARY KEY,
	stock_currency currency
);

INSERT INTO stocks 
	(stock_currency)
VALUES
	('USD')
;

SELECT * FROM stocks;

-- DROP TYPE name

CREATE TYPE sample_type AS ENUM ('ABC', '123');
DROP TYPE sample_type;