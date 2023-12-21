-- an ENUM with a DEFAULT value in a table 

-- First create an ENUM data type

CREATE TYPE status AS ENUM ('pending', 'approved', 'declined');

-- Create a table and assign default value to the column

CREATE TABLE cron_jobs (
	cron_job_id INT,
	status status DEFAULT 'pending'
);

-- Test with insert data

INSERT INTO cron_jobs 
	(cron_job_id) 
VALUES 
	(1),
	(2),
	(3)
;

INSERT INTO cron_jobs 
	(cron_job_id, status) 
VALUES 
	(4, 'approved'),
	(5, 'approved'),
	(6, 'declined')
;

SELECT * FROM cron_jobs;