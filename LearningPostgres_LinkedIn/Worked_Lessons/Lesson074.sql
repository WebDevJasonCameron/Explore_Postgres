-- JSON data type
-- #################
/*
	1. PostgreSQL has built-in support for JSON with a great range of processing 
	   functions and operators, and complete indexing support
	   
	2. The JSON datatype is actually text under the hood, with 
	   verification that the format is valid JSON input... much like
	   XML
	
	3. The JSONB implemented a binary version of the JSON datatype
	
	4. The JSON datatype, being a text datatype, stores the data 
	   presentation exactly as it is sent to PostgreSQL, including
	   whitespace and indentation, and also multiple-keys when present
	   (no processing at all is done on the_content, only form
	   validation)
	
	5. The JSONB datatype is an advanced binary storage format with 
	   full processing, indexing and searching capabilities, and as such
	   pre-processes the JSON data to an internal format, which does
	   include a single value per key; and also isn't sensible to extra 
	   whitespace or indention
*/

-- 1. Create sample table
CREATE TABLE table_json(
	id SERIAL PRIMARY KEY,
	docs JSON
);

-- 2. Enter data
INSERT INTO table_json 
	(docs)
VALUES
	('[1, 2, 3, 4, 5, 6]'),
	('[2, 3, 4, 5, 6, 7]'),
	('{"key":"value"}')
;


-- 3. Query data
SELECT * FROM table_json;

-- 4. Query specific data
SELECT docs FROM table_json;

SELECT *
FROM table_json
WHERE 
	docs @> '2'						-- <- Doesn't work until JSONB format
;

ALTER TABLE table_json
ALTER COLUMN docs TYPE JSONB;

-- Creats advance searches... advance darkness
CREATE INDEX ON table_json USING GIN (docs jsonb_path_ops);







