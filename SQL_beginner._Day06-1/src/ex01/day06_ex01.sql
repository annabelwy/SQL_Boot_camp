INSERT INTO person_discounts
SELECT ROW_NUMBER() OVER ( ) AS id, person_order.person_id,
       menu.pizzeria_id,
       (CASE
            WHEN COUNT(pizzeria_id) = 1 THEN 10.5
            WHEN COUNT(pizzeria_id) = 2 THEN 22
            ELSE 30 END
           )
FROM person_order
         JOIN menu ON menu.id = person_order.menu_id
GROUP BY person_id, pizzeria_id;