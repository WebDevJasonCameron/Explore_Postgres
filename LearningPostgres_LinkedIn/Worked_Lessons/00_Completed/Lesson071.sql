-- UUID
-- #########

/*
	1. UUID 	Universal Unique Idnetifier
	2. It is a 128-bit quantity generated by an algorithm that make it 
	   unique in the known universe using the same algorithm
	3. Example
	
	   "19882c24-9c1d-11ee-a70e-46f3e3785a81"
	   
	   - 32 digits 
	   - hexadeximal digits
	   - separated by hyphens
	   
	4. UUID is much much better than the SERIAL data type when it comes to 'uniquness'
	   accross systems as SERIAL data type generates only unique values within a 
	   singl database
	5. To create a UUID data type in PostgreSQL, you need a third party UUID
	   UUID algorithms to generate UUID e.g. uuid-ossp

*/

-- 1. Enable third part UUID extensions first  e.g. uuid-ossp

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- 2. Lets generate a sample UUID value first

SELECT uuid_generate_v1();

-- 3. Lets create a sample table 'table_uuid'

CREATE TABLE table_uuid (
	product_id UUID DEFAULT uuid_generate_v1(),
	product_name VARCHAR(100) NOT NULL
);

-- 4. Insert data
INSERT INTO table_uuid 
	(product_name)
VALUES
	('mop'),
	('beer'),
	('sticker')
;

SELECT * FROM table_uuid;

-- 5. Change UUID default value
ALTER TABLE table_uuid
ALTER COLUMN product_id
SET DEFAULT uuid_generate_v4();


