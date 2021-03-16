/*
 * Write a SQL query SELECT query that:
 * computes the number of customers who live outside of the US.
 */

SELECT count(*)
FROM customer
INNER JOIN address
USING (address_id)
INNER JOIN city
USING (city_id)
INNER JOIN country
USING (country_id)
WHERE country != 'United States';

