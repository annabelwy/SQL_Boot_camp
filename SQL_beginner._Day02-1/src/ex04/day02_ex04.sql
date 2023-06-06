SELECT menu.pizza_name, pizzeria.name as pizeria_name, menu.price
FROM pizzeria
JOIN menu ON (menu.pizzeria_id=pizzeria.id)
WHERE (menu.pizza_name='pepperoni pizza' OR menu.pizza_name='mushroom pizza')
ORDER BY 1,2;