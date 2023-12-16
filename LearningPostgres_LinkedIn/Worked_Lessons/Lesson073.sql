-- hstore data type
-- ##################

/*
	1. hstore is a data type that store data into key-value pairs
	2. The hstore module implements the hstore data type
	3. The keys and values are just text strings only
*/

-- 1. Inall hstore extensions first
CREATE EXTENSION IF NOT EXISTS hstore;

-- 2. Create a sample table
CREATE TABLE table_hstore (
	book_id SERIAL PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	book_info hstore
);

-- 3. Add data
INSERT INTO table_hstore 
	(title, book_info)
VALUES
	('TITLE 1',
	'
	 	"publisher" => "ABC publisher",
	 	"paper_cost" => "10.00",
	 	"e_cost" => "5.85"
	 ')
;

INSERT INTO table_hstore 
	(title, book_info)
VALUES
	('TITLE 2',
	'
	 	"publisher" => "ABC publisher2",
	 	"paper_cost" => "20.00",
	 	"e_cost" => "7.85"
	 ')
;

-- 4. Query data
SELECT * FROM table_hstore;

-- -> operator
SELECT book_info -> 'publisher'
FROM table_hstore;