SELECT COUNT(*) AS FilmCount
FROM film
WHERE length > (SELECT AVG(length) FROM film);
