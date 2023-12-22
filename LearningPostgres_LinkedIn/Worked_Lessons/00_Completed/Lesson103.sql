-- NOT NULL constraints
-- ########################

CREATE TABLE table_nn (
	id SERIAL PRIMARY KEY,
	tag TEXT NOT NULL
);

SELECT * FROM table_nn;

INSERT INTO table_nn
	(tag)
VALUES 
	(''),							-- <- BLANK SPACE STILL WORKS
	('HELLO WORLD');

-- Addinconstraint to an existing table

CREATE TABLE table_nn2 (
	id SERIAL PRIMARY KEY,
	tag2 TEXT
);

-- Apply NOT NULL to tag2
ALTER TABLE table_nn2 
ALTER COLUMN tag2 SET NOT NULL;