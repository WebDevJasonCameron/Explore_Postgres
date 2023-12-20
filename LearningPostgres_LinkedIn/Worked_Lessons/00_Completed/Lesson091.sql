-- Enumeration Type domain

CREATE DOMAIN valid_color VARCHAR(10)
CHECK(VALUE IN ('red', 'green', 'blue'));

CREATE TABLE colors(
	color valid_color
);

INSERT INTO colors (color)
VALUES('red');

SELECT * FROM colors;

INSERT INTO colors (color)
VALUES('pink');								-- <- Error

SELECT * FROM colors;


