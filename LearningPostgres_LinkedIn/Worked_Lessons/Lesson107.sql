-- PRIMARY KEY Constraint on multiple columns = COMPOSITE KEY
-- ############################################################

CREATE TABLE t_grades (
	course_id VARCHAR(100) NOT NULL,
	student_id VARCHAR(100) NOT NULL,
	grade INT NOT NULL
);

SELECT * FROM t_grades;

INSERT INTO t_grades 
	(course_id, student_id, grade)
VALUES
	('MATH', 'S1', 50),
	('CHEMISTRY', 'S1', 70),
	('ENGLISH', 'S2', 70),
	('PHYSICS', 'S1', 80)
;

INSERT INTO t_grades 
	(course_id, student_id, grade)
VALUES
	('MATH', 'S2', 50)
;

DROP TABLE t_grades;

CREATE TABLE t_grades (
	course_id VARCHAR(100) NOT NULL,
	student_id VARCHAR(100) NOT NULL,
	grade INT NOT NULL,
	PRIMARY KEY (course_id, student_id) -- <- ORDER IMPORTANT
);
