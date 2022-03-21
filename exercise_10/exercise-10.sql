-- find the category name of all inventory items that have never been rented
-- Similar to exercise 9 with an additonal join
SELECT
category.name
FROM 
category
LEFT JOIN 
film_category
ON 
film_category.category_id = category.category_id
LEFT JOIN 
film
ON 
film.film_id = film_category.film_id
RIGHT JOIN 
inventory
ON 
inventory.film_id = film.film_id
LEFT JOIN 
rental
ON 
inventory.inventory_id = rental.inventory_id
WHERE
rental.rental_id IS NULL
