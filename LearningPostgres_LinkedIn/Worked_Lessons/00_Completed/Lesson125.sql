-- 15. Share seq among tables
CREATE SEQUENCE common_fruits_seq START 100;

CREATE TABLE apples (
	fruit_id INT DEFAULT nextval('common_fruits_seq') NOT NULL,
	fruit_name VARCHAR(50)
);

CREATE TABLE mangoes (
	fruit_id INT DEFAULT nextval('common_fruits_seq') NOT NULL,
	fruit_name VARCHAR(50)
);

INSERT INTO apples
	(fruit_name)
VALUES
	('big apple');
	
INSERT INTO mangoes
	(fruit_name)
VALUES
	('big mango');
	
INSERT INTO mangoes
	(fruit_name)
VALUES
	('another mango');
	
INSERT INTO apples
	(fruit_name)
VALUES
	('more apple');
	
SELECT * FROM apples;
SELECT * FROM mangoes;