-- 7. Use multiple sequence parameters to create a sequence 
-- CREATE SEQUENCE name
-- START WITH value
-- INCREMENT value
-- MINVALUE value
-- MAXVALUE value

CREATE SEQUENCE IF NOT EXISTS test_seq3
INCREMENT 50
MINVALUE 400
MAXVALUE 6000
START WITH 500;

SELECT nextval('test_seq3');