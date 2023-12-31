-- Dimenstions are ignored by PostgreSQL
-- ###############################################

-- Create table with only one ARRAY dimension

CREATE TABLE teacher2 (
	teacher_id SERIAL PRIMARY KEY,
	name VARCHAR(150),
	phones TEXT ARRAY[1]
);

-- READ

SELECT * FROM teacher2;

-- ADD data

INSERT INTO teacher2
	(name, phones)
VALUES
	('Adam', ARRAY['(111)-222-3333', '(555)-666-7777']);
	
-- "{(111)-222-3333,(555)-666-7777}"	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	