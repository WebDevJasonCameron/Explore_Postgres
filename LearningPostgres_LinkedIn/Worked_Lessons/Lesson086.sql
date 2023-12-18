-- User-defined data types

-- create domain data type
-- ############################################################
-- 1. CREATE DOMAIN statement creates a user-defined data type with a range, optional DEFAULT
-- 	  NOT NULL and CHECK constraints
-- 2. They have to be unique within a schema scope.  Cannot be re-used outside of scop
--    where they are defined
-- 3. Help to STANDERDIZE your database data types in one place
-- 4. A domain data type is COMMON data type and can be RE-USED in multiple columns.  
--	  Write once and ashare it
-- 5. NULL is default
-- 6. Compositn Type : Only Single Value Return

-- CREATE DOMAIN name AS data_type constraint

-- Example 1: 'addr' domain with VARCHAR(100)
CREATE DOMAIN addr VARCHAR(100) NOT NULL

CREATE TABLE locations(
	address VARCHAR(100) NOT NULL,
	address2 addr
);

INSERT INTO locations 
	(address, address2)
VALUES
	('123 London', '456 US'),

SELECT * FROM locations;

DROP TABLE locations;
-- Example 2: 'idx' 











