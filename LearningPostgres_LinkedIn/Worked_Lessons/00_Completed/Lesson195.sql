-- 3. NJ movies and directors table

SELECT *
FROM movies m
NATURAL JOIN directors d;

SELECT *
FROM movies m
NATURAL LEFT JOIN directors d;

SELECT *
FROM movies m
NATURAL RIGHT JOIN directors d;

-- 4. 
