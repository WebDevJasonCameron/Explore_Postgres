-- example 5: 'us_postal_code' domain to check for valid us postal code format

CREATE DOMAIN us_postal_code AS TEXT
CHECK(
	VALUE ~'^\d{5}$'
	OR VALUE ~'^\D{5}~\d{4}$'
);

CREATE TABLE addresses (
	address_id SERIAL PRIMARY KEY,
	postal_code us_postal_code
);

INSERT INTO addresses 
	(postal_code)
VALUES
	('10000');

SELECT * FROM addresses;