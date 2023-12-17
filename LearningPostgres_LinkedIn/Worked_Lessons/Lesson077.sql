-- MODIFY TABLE STRUCTURE
-- #########################

-- Rename a table
ALTER TABLE users 
RENAME TO persons;

-- Rename a column
ALTER TABLE persons
RENAME COLUMN age TO person_age;

-- Drop column
ALTER TABLE persons
DROP COLUMN IF EXISTS person_age;

ALTER TABLE persons
ADD COLUMN age VARCHAR(10);

-- Change data type in column
ALTER TABLE persons
ALTER COLUMN age TYPE int
USING age::integer;

ALTER TABLE persons
ALTER COLUMN age TYPE VARCHAR;

-- Set default value
ALTER TABLE persons
ADD COLUMN is_enable VARCHAR(1);

ALTER TABLE persons
ALTER COLUMN is_enable SET DEFAULT 'Y';

INSERT INTO persons 
(
	first_name,
	last_name,
	nationality,
	age
)
VALUES
(
	'JOHN',
	'BENJAMIN',
	'US',
	40
);

SELECT * FROM persons;