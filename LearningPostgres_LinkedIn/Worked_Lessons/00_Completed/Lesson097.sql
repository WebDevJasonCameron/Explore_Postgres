-- Alter Data types 
-- ###############################
CREATE TYPE myaddress AS (
	city VARCHAR(50),
	COUNTRY VARCHAR(20)
);

-- Rename a data type
-- ALTER TYPE name RENAME TO new_name
ALTER TYPE myaddress RENAME TO my_address;

-- Chane the owner
-- alter type name OWNER TO username
ALTER TYPE my_address OWNER TO adam;

-- Change the schema
-- ALTER TYPE name SET SCHEMA schema_name
ALTER TYPE my_address SET SCHEMA test_scm;

-- To add a new attribute
-- ALTER TYPE name ADD ATTRIBUTE attributes
ALTER TYPE my_address ADD ATTRIBUTE 
	street_address VARCHAR(150);

ALTER TYPE test_scm.my_address ADD ATTRIBUTE 		-- <- if in another schema
	street_address VARCHAR(150);