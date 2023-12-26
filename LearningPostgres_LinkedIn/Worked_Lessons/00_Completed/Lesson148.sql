-- System Month Date Settings
-- #############################

-- To view current setting for date style
SHOW DateStyle

/*
To change date style you can use 
	
	type 	: 	ISO, Postgres, SQL, or German
	format	:	MDY		Month Day Year
				DMY		Day Month Year
				YMD		Year Month Day
*/

SET DataStyle = 'ISO, DMY';

-- To reset
SET DateStyle = 'ISO, MDY';


