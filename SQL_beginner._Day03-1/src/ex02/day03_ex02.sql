SELECT menu.pizza_name AS pizza_name, menu.price, pizzeria.name AS pizzeria_name
FROM pizzeria
JOIN menu ON pizzeria.id=menu.pizzeria_id
LEFT JOIN person_order ON menu.id=person_order.menu_id where person_order.menu_id is NULL
ORDER BY 1,2;



