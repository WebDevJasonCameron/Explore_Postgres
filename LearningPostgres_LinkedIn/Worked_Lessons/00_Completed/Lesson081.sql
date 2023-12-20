-- Implicit to explicit conversion
-- #################################   <-- Doesn't work

-- 1. Using integer and factorial
SELECT 20 !;

SELECT 20 ! AS "result";

-- ! Factorial takes an ardument type bigint!, so lets convert integer to bigin
SELECT CAST(20 AS bigint) ! AS "result";

-- 2. Round with numeric
SELECT ROUND(10, 4) AS "result";

-- 3.










