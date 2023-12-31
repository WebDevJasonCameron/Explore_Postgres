-- Using Arrays in Tables
-- ###########################

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














