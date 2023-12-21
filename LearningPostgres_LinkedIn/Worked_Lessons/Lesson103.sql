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
