-- Modify Array Content
-- #######################

-- 1. Create table

CREATE TABLE teachers (
	teacher_id SERIAL PRIMARY KEY,
	name VARCHAR(150),
	phones TEXT []
);


CREATE TABLE teachers1 (
	teacher_id SERIAL PRIMARY KEY,
	name VARCHAR(150),
	phones TEXT ARRAY
);

SELECT * FROM teachers;
SELECT * FROM teachers;

DROP TABLE teachers;
DROP TABLE teachers1;

---------------------------------------------------
-- 2. Insert data into arrays
-- ###################################

INSERT INTO teachers 
	(name, phones)
VALUES
	('Adam', ARRAY['(111)-222-3333', '(555)-666-7777']);

SELECT * FROM teachers;

INSERT INTO teachers 
	(name, phones)
VALUES
	('Linda', '{"(111)-123-4567"}'),
	('Jeff', '{"(222)-555-9999", "(444)-786-1234"}');
	
---------------------------------------------------------
SELECT * FROM teachers;

UPDATE teachers
SET phones[2] = '(800)-123-4568'
WHERE teacher_id = 2;

SELECT * FROM teachers WHERE teacher_id = 2;

UPDATE teachers
SET phones[1] = '(888)-123-4568'
WHERE teacher_id = 1;