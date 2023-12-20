-- 6: 'proper_email' domain 

CREATE DOMAIN propper_email VARCHAR(150)
CHECK (VALUE ~* '^[A-Za-z0-9._%~]+@[A-Za-z0-9.-]+[.][A-Za-z]+$');

DROP DOMAIN propper_email;
DROP TABLE clients_names;

CREATE TABLE clients_names(
	client_name_id SERIAL PRIMARY KEY,
	email propper_email
);

SELECT * FROM clients_names;

INSERT INTO clients_names 
	(email)
VALUES
	('smash@gmail.com');
	
	
	
	
	
	