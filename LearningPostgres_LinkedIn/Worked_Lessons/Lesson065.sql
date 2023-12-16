-- Decimal Numbers


CREATE TABLE table_numbers (
	col_numeric NUMERIC(20,5),
	col_real REAL,
	col_double DOUBLE PRECISION
);

SELECT * FROM table_numbers;

INSERT INTO table_numbers (col_numeric, col_real, col_double)
VALUES
	(.9, .9, .9),
	(3.13579, 3.13579, 3.13579),
	(4.1357987654, 4.1357987654, 4.1357987654)
;