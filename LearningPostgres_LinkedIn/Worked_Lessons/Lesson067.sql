-- Date/Time data types
-- ####################

/*
	1. store the time of day values

	2. Take 8 bytes to store time

	3. column_name TIME (precision)

	4. precision = number of fraction digits placed in the second field 
	   precision up to 6 digits
   
	5. Common Formats
	
		HH:MM 				10:30
		HH:MM:SS			10:11:25
		HHMMSS				103030
		
		MM:SS.ppppp			03:59.99999
		HH:MM:SS.ppppp		03:05.08.777777
		
*/

-- Lets create a sample table
CREATE TABLE table_time (
	id SERIAL PRIMARY KEY,
	class_name VARCHAR(100) NOT NULL,
	start_time TIME NOT NULL,
	end_time TIME NOT NULL
);

-- Lets insert some values
INSERT INTO table_time 
	(class_name, start_time, end_time)
VALUES
	('MATH', '08:00:00', '09:00:00'),
	('CHEMISTRY', '09:01:00', '10:00:00')
;

-- View data
SELECT * FROM table_time;


-- Getting current time
SELECT CURRENT_TIME;



