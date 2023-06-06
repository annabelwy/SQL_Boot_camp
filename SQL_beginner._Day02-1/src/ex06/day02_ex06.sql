SELECT menu.pizza_name, pizzeria.name AS pizzeria_name
FROM pizzeria
JOIN menu ON menu.pizzeria_id=pizzeria.id
JOIN person_order ON person_order.menu_id=menu.id
JOIN person ON person.id=person_order.person_id
WHERE (person.name='Anna' OR person.name='Denis')
ORDER BY 1,2;