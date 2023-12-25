-- SPLIT_PART function
-- ######################

-- PostgreSQL SPLIT_PART() function splits a string on a specified delimiter 
-- and returns the nth substring
/*
SPLIT_PART(string, delimiter, position)
*/

SELECT SPLIT_PART('1, 2, 3', ',', 2);

SELECT SPLIT_PART('one, two, three', ',', 2);

SELECT SPLIT_PART('A|B|C|D', '|', 3);

-- Get the release year of all the movies

SELECT 
	movie_name,
	release_date,
	SPLIT_PART(release_date::TEXT, '-', 1) AS release_year
FROM movies;












