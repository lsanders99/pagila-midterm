/*
 * Write a SQL query SELECT query that:
 * List the first and last names of all actors who have appeared in movies in the "Children" category,
 * but that have never appeared in movies in the "Horror" category.
 *
 * HINT:
 * This requires joining from the category table down to the actor table.
 */

SELECT first_name || ' ' ||  last_name AS "Actor Name"
FROM actor
WHERE first_name || ' ' ||  last_name  NOT IN (
SELECT distinct(first_name || ' ' ||  last_name) AS "Actor Name"
FROM actor
INNER JOIN film_actor
USING (actor_id)
INNER JOIN film
USING (film_id)
INNER JOIN film_category
USING (film_id)
INNER JOIN category
USING (category_id)
WHERE category.name = 'Horror'
) AND first_name || ' ' ||  last_name IN (
SELECT distinct(first_name || ' ' ||  last_name) AS "Actor Name"
FROM actor
INNER JOIN film_actor
USING (actor_id)
INNER JOIN film
USING (film_id)
INNER JOIN film_category
USING (film_id)
INNER JOIN category
USING (category_id)
WHERE category.name = 'Children'
)
ORDER BY "Actor Name";


