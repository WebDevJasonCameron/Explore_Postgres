-- 13. Attaching sequence to a table

CREATE TABLE users (
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50)
);

INSERT INTO users 
	(username)
VALUES
	('Adam)');

INSERT INTO users 
	(username)
VALUES
	('Smash)');
	
ALTER SEQUENCE users_user_id_seq RESTART 100;

INSERT INTO users 
	(username)
VALUES
	('Calvin)');


SELECT * FROM users;

-- Start Over Fresh
CREATE TABLE users2 (
	user2_id INT PRIMARY KEY, 
	username2 VARCHAR(50)
);

-- Add Seq
CREATE SEQUENCE user2_user2_id_seq
START WITH 100 OWNED BY users2.user2_id;

-- Attach SEQ
ALTER TABLE users2
ALTER COLUMN user2_id SET DEFAULT nextval('user2_user2_id_seq');

INSERT INTO users2
	(username2)
VALUES
	('Adam)');
	
SELECT * FROM users2;
