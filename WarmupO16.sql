--Question 1
SELECT first_name, last_name
FROM customer
WHERE first_name ILIKE '%dan%';

--Question 2
SELECT first_name, last_name
FROM customer
WHERE last_name ILIKE '%dan%';


--Question 3
SELECT first_name, last_name
FROM customer
WHERE first_name ILIKE '%dan%'
UNION 
SELECT first_name, last_name
FROM customer
WHERE last_name ILIKE '%dan%';


--Question 4
with twice as(
SELECT first_name, last_name
FROM customer
WHERE first_name ILIKE '%dan%'
UNION ALL 
SELECT first_name, last_name
FROM customer
WHERE last_name ILIKE '%dan%')
SELECT first_name, last_name
FROM twice
GROUP BY first_name,last_name
HAVING COUNT(*) = 2;



--Question 5

SELECT title
FROM film
WHERE  title like '%Fred%';


--Question 6

SELECT title
FROM film
WHERE description ILIKE '%squirrel%';


--Question 7
With squirrel as (
SELECT title
FROM film
WHERE  title like '%Fred%'
UNION ALL
SELECT title
FROM film
WHERE description ILIKE '%squirrel%'
)SELECT title
FROM squirrel
group by title
HAVING count(*) >=2;