-- 6. Use column1, aggregate function column without specifying GROUP BY clause?

SELECT								-- <- ERROR
	movie_lang,
	MIN(movie_length),
	MAX(movie_length)
FROM movies
ORDER BY MAX(movie_length) DESC;

SELECT								
	movie_lang,
	MIN(movie_length),
	MAX(movie_length)
FROM movies
GROUP BY movie_lang								-- <- Need this!
ORDER BY MAX(movie_length) DESC;

-- 7, Using more than 1 columns in SELECT
-- Get average movie length group by movie language and age certification

SELECT 
	movie_lang,
	age_certificate,
	AVG(movie_length) AS "Avg movie length"
FROM movies 
GROUP BY 
	movie_lang,
	age_certificate
ORDER BY
	movie_lang,
	age_certificate;
	
-- 8. Can we not use GROUP BY on all columns? <-- Error

-- 9. Filter dsome records 

SELECT 
	movie_lang,
	age_certificate,
	AVG(movie_length) AS "Avg movie length"
FROM movies 
WHERE 
	movie_length > 100
GROUP BY 
	movie_lang,
	age_certificate
ORDER BY
	movie_lang,
	age_certificate;

-- 10. Get average movie length group by movie age certificate where age cert is = 10

SELECT
	age_certificate,
	AVG(movie_length)
FROM movies
WHERE
	age_certificate = 'PG'
GROUP BY age_certificate;


-- 11. ....

-- 12. HOW MANY DIRECTORS ARE THERE PER EACH NATIONALITY

SELECT
	nationality,
	COUNT(*) AS "Total Directors"
FROM directors
GROUP BY nationality
ORDER BY 2 DESC;

-- 13. Get total sum movie length for each age certificate and movie lang combo

SELECT
	movie_lang,
	age_certificate,
	SUM(movie_length)
FROM movies
GROUP BY
	movie_lang,
	age_certificate
ORDER BY 3 DESC;


-- 14. GROUP BY on Aggregate functional column?  <-- ERROR

SELECT
	movie_lang,
	age_certificate,
	SUM(movie_length)
FROM movies
GROUP BY
	movie_lang,
	age_certificate,
	SUM (movie_length)
ORDER BY 3 DESC;


