USE SAKILA;

-- Select all the actors with the first name ‘Scarlett’.
SELECT *
FROM SAKILA.ACTOR
WHERE FIRST_NAME = 'SCARLETT'
;

-- Select all the actors with the last name ‘Johansson’.
SELECT *
FROM SAKILA.ACTOR
WHERE LAST_NAME = 'JOHANSSON'
;

-- How many films (movies) are available for rent?
SELECT RENTAL_DURATION, TITLE
FROM SAKILA.FILM
WHERE RENTAL_DURATION = 1
;

SELECT COUNT(FILM_ID)
FROM SAKILA.FILM
;


-- How many films have been rented?
SELECT COUNT(RENTAL_ID)
FROM SAKILA.RENTAL
;

-- What is the shortest and longest rental period?
SELECT RENTAL_DURATION AS SHORTEST_RENTAL, TITLE
FROM SAKILA.FILM
ORDER BY RENTAL_DURATION ASC
LIMIT 5;

SELECT RENTAL_DURATION AS LONGEST_RENTAL, TITLE
FROM SAKILA.FILM
ORDER BY RENTAL_DURATION DESC
LIMIT 5;

-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT LENGTH AS MAX_DURATION, TITLE
FROM SAKILA.FILM
ORDER BY LENGTH DESC
LIMIT 5
;

SELECT LENGTH AS MIN_DURATION, TITLE
FROM SAKILA.FILM
ORDER BY LENGTH ASC
LIMIT 5
;

-- What's the average movie duration?
SELECT AVG(LENGTH) AS MOVIE_DURATION
FROM SAKILA.FILM;

-- What's the average movie duration expressed in format (hours, minutes)?
SELECT AVG(LENGTH)/60 AS MOVIE_DURATION
FROM SAKILA.FILM;

-- How many movies longer than 3 hours?
SELECT LENGTH, TITLE
FROM SAKILA.FILM
WHERE LENGTH > 180
ORDER BY LENGTH DESC
;

-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT CONCAT(LOWER(FIRST_NAME), ' ', UPPER(LAST_NAME)) AS CUST_NAME,
CONCAT(LOWER(FIRST_NAME), '.', LOWER(LAST_NAME), '@sakilacustomer.org') AS CUST_EMAIL
FROM SAKILA.CUSTOMER;

-- What's the length of the longest film title?
SELECT LENGTH, TITLE AS LONGEST_FILM 
FROM SAKILA.FILM
ORDER BY LENGTH DESC
LIMIT 1
;
