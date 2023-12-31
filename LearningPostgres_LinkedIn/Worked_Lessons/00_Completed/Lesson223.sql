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
