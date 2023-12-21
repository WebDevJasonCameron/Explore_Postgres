-- Alter an ENUM data type
-- ###############################

-- Create a sample ENUM data type
-- CREATE TYPE name AS ENUM (values)
CREATE TYPE mycolors AS ENUM ('green', 'red', 'blue');


-- Update a value
-- ALTER TYPE name RENAME VALUE oldvalue TO newvalue
ALTER TYPE mycolors RENAME VALUE 'red' TO 'pink';


-- List all ENUM values
-- SELECT enum_rant(NULL::name)
SELECT enum_range(NULL::mycolors);


-- To add a new value
-- ALTER TYPE name ADD VALUE valuename [BEFORE | AFTER] value
ALTER TYPE mycolors ADD VALUE 'red' BEFORE 'green';