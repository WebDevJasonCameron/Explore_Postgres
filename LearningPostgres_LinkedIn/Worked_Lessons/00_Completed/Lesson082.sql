-- Table data conversion
-- ######################

-- 1. Lets create a table called 'ratings' with initial data as characters
CREATE TABLE ratings(
	rating_id SERIAL PRIMARY KEY,
	rating VARCHAR(1) NOT NULL
);

SELECT * FROM ratings;

-- 2. enter data
INSERT INTO ratings
	(rating) 
VALUES
	('A'),
	('B'), 
	('C'),
	('D');

-- 3. The business requirements is changed to numeric
INSERT INTO ratings
	(rating)
VALUES
	(1),
	(2), 
	(3),
	(4);


-- Change everything without actually changing the data within the db
SELECT 
	rating_id,
	CASE
		WHEN rating~E'^\\d+$' THEN
			CAST (rating AS INTEGER)
		ELSE
			0
		END AS rating
FROM 
	ratings;