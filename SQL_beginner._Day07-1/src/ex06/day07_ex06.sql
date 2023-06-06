SELECT pizzeria.name,
       COUNT(person_order.id),
       ROUND(AVG(menu.price), 2),
       MAX(menu.price),
       MIN(menu.price)
FROM pizzeria
         JOIN menu ON menu.pizzeria_id = pizzeria.id
         JOIN person_order ON person_order.menu_id = menu.id
GROUP BY pizzeria.name
ORDER BY 1;