SELECT COUNT(*) AS FilmCount
FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);
