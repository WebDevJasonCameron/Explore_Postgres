-- TIMESTAMP AND TIMESTAMPTZ data types

CREATE TABLE table_time_tz(
	ts TIMESTAMP,
	tstz TIMESTAMPTZ
);

INSERT INTO table_time_tz (ts, tstz)
VALUES
	('2020-02-22 10:10:10-07', '2020-02-22 10:10:10-07')
;

SELECT * FROM table_time_tz;

SHOW TIMEZONE;

SET TIMEZONE = 'America/New_York';

-- Current timestapm
SELECT CURRENT_TIMESTAMP;

-- Current time of the Day
SELECT TIMEOFDAY();







