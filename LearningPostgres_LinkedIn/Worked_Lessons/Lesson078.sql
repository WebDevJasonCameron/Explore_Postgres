-- Add a constraint to a column
-- ############################

-- Create table
CREATE TABLE web_links(
	link_id SERIAL PRIMARY KEY,
	link_url VARCHAR(255) NOT NULL,
	link_target VARCHAR(20)
);

SELECT * FROM web_links;

INSERT INTO web_links
	(link_url, link_target)
VALUES
	('https://ww.google.com', '_blank');
	
INSERT INTO web_links
	(link_url, link_target)
VALUES
	('https://ww.amazon.com', '_blank');
	
ALTER TABLE web_links
ADD CONSTRAINT unique_web_url UNIQUE (link_url);

-- Set column to accept only defined allowed/acceptable values
ALTER TABLE web_links
ADD COLUMN is_enabled VARCHAR(2);

INSERT INTO web_links
	(link_url, link_target, is_enabled)
VALUES
	('https://ww.walmart.com', '_blank', 'Y');

ALTER TABLE web_links
ADD CHECK (is_enabled IN ('Y', 'N'));

INSERT INTO web_links
	(link_url, link_target, is_enabled)
VALUES
	('https://citi', '_blank', 'Y');

UPDATE web_links
SET is_enabled = 'Y'
WHERE
	link_id = 1;
	
UPDATE web_links
SET is_enabled = 'Y'
WHERE
	is_enabled IS NULL;