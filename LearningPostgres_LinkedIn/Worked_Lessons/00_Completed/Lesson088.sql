-- Example 4: 'positive_numeric' domain with a position NUMERIC I.E. > 0

CREATE DOMAIN positive_numeric INT NOT NULL CHECK (VALUE > 0);

CREATE TABLE sample (	
	sample_id SERIAL,
	value_num positive_numeric
);

INSERT INTO sample
	(value_num)
VALUES
	(10);
	
SELECT * FROM sample;