-- Primary Key

CREATE TABLE table_items(
	item_id INTEGER PRIMARY KEY,
	item_name VARCHAR(100) NOT NULL
);

SELECT * FROM table_items;

INSERT INTO table_items
	(item_id, item_name)
VALUES
	(1, 'pen')
;

INSERT INTO table_items
	(item_id, item_name)
VALUES
	(2, 'pen')
;

INSERT INTO table_items			-- <- Error
	(item_id, item_name)
VALUES
	('', 'pen')
;


INSERT INTO table_items			-- <- Error
	(item_name)
VALUES
	('pen')
;

ALTER TABLE table_items
DROP CONSTRAINT table_items_pkey;

ALTER TABLE table_items
ADD PRIMARY KEY (item_id);

ALTER TABLE table_items
ADD PRIMARY KEY (item_id, item_name);