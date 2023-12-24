-- Sequences


-- 1. Create a sequence
-- CREATE SEQUENCE IF NOT EXISTS name
-- CREATE SEQUENCE name

CREATE SEQUENCE IF NOT EXISTS test_seq;

-- 2. Advance sequence and return new value
-- select nextval(name)

SELECT nextval('test_seq');

-- 3. Return most current value of the sequence
-- select currval(name)

SELECT currval('test_seq');

-- 4. Set a sequence
-- SELECT setval(name, value)

SELECT setval('test_seq', 100);

-- 5. Set a sequence and do not skip over
-- SELECT setval(name, value, false);

SELECT setval('test_seq', 200, false);

-- 6. Control the sequence start VALUE
-- CREATE SEQUENCE IF NOT EXISTS name START WITH value
-- CREATE SEQUENCE name START WITH value

CREATE SEQUENCE IF NOT EXISTS test_seq2 START WITH 100;




