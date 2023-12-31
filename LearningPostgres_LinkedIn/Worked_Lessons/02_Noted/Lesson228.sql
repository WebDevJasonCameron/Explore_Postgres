-- Using Multi-demensional ARRAY
-- ####################################

-- 1. Create student table

CREATE TABLE students (
	student_id SERIAL PRIMARY KEY,
	student_name VARCHAR(100),
	student_grades INTEGER[][]
);

INSERT INTO students
	(student_name, student_grades)
VALUES 
	('s1', '{90, 2020}');
	
SELECT * FROM students;

INSERT INTO students
	(student_name, student_grades)
VALUES 
	('s2', '{80, 2020}'),
	('s3', '{70, 2019}'),
	('s3', '{60, 2019}');
	
-- GET DATA

SELECT student_grades[1] FROM students;
SELECT student_grades[2] FROM students;

SELECT * 
FROM students
WHERE 
	'2020' = ANY(student_grades);
	
SELECT * 
FROM students
WHERE 
	'70' = ANY(student_grades)
	OR '60' = ANY(student_grades);
	
	