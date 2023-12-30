-- Joining multiple tables via JOIN
-- ####################################

/*
	SELECT 
		table1.column,
		table2.column,
		table3.column
	FROM table1
	JOIN table2 ON table1.column = table2.column
	JOIN table3 ON table3.column = table2.column

*/

-- 1. Join movies, directors and movies revenues tables

SELECT *
FROM movies m
JOIN directors d ON d.director_id = m.director_id
JOIN movies_revenues r ON m.movie_id = r.movie_id;

-- 2. Order of tables joing matters?

SELECT *
FROM movies m
JOIN movies_revenues r ON m.movie_id = r.movie_id
JOIN directors d ON d.director_id = m.director_id;

SELECT *
FROM directors d
JOIN movies m ON d.director_id = m.director_id
JOIN movies_revenues r ON r.movie_id = m.movie_id

-- 3. JOin movies actors, directors, movies revenues together
SELECT
 	*
FROM actors a
1JOIN movies_actors a on a.actors_id = m.actors_id
JOIN movies m ON m.movie_id = a.movie_id
















