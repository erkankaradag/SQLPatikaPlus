SELECT customer_id, COUNT(*) AS num_of_payments
FROM payment
GROUP BY customer_id
ORDER BY num_of_payments DESC;
