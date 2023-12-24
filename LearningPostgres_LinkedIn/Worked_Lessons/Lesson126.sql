-- Alpha-numeric seq

-- Create table with SERIAL data type for seq
CREATE TABLE contacts (
	contact_id SERIAL PRIMARY KEY,
	contact VARCHAR(150)
);

-- Insert data
INSERT INTO contacts
	(contact)
VALUES 
	('Adam');
	
SELECT * FROM contacts;

-- Drop table
DROP TABLE contacts;

-- Create Seq
CREATE SEQUENCE table_seq;

-- Create Table with Default
CREATE TABLE contacts (
	contact_id TEXT NOT NULL DEFAULT ('ID-' || nextval('table_seq')) PRIMARY KEY,
	contact VARCHAR(150)
);

-- Insert Data
ALTER SEQUENCE table_seq OWNED BY contacts.contact_id
