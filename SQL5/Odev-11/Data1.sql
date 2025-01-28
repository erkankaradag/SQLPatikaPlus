SELECT first_name
FROM actor
UNION
SELECT first_name
FROM customer
ORDER BY first_name;