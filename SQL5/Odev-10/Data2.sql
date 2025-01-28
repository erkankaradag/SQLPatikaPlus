SELECT customer.first_name, customer.last_name, payment.payment_id 
FROM payment
RIGHT JOIN customer
ON payment.customer_id = customer.customer_id;