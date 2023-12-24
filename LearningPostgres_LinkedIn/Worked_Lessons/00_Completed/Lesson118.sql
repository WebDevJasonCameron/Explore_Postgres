-- 10. Alter seq
-- ALTER SEQUENCE name RESTART WITH value
-- ALTER SEQUENCE name RENAME TO new_name

SELECT nextval('test_seq');

ALTER SEQUENCE test_seq RESTART WITH 100;

ALTER SEQUENCE test_seq RENAME TO my_sequence4;

-- 11. Delete / Drop a se	
-- DROP SEQUENCE IF EXISTS name

DROP SEQUENCE my_sequence4;