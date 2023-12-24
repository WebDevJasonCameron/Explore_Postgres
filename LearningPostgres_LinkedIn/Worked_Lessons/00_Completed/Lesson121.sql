-- 9. Create a Descending seq and CYCLE | NO CYCLE
CREATE SEQUENCE seq_des
INCREMENT -1
MINVALUE 1
MAXVALUE 3
START 3
CYCLE;

SELECT nextval('seq_des');