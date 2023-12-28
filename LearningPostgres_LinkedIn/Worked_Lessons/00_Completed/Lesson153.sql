-- Date construction Functions
-- #############################

-- MAKE_DATE(YYYY,MM,DD)

SELECT 
	MAKE_DATE(2020,01,01);

SELECT
	MAKE_DATE(2020,12,31);
	
-- Time without timezone

SELECT
	MAKE_TIME(2,3,4.05);
	
SELECT
	MAKE_TIME(2,14,4.05);	
	
	
-- Timestamps
-- make_timestamp (yyyy, mm, dd, hh, mm, ss)
SELECT 
	MAKE_TIMESTAMP(2020,01,01,10,30,45);
	
SELECT 
	MAKE_TIMESTAMP(2020,12,32,10,30,45);
	

	
	