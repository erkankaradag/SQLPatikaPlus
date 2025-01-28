SELECT *
FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
   OR replacement_cost = (SELECT MIN(replacement_cost) FROM film)
ORDER BY rental_rate, replacement_cost;
