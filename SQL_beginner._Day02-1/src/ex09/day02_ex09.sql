SELECT person.name AS name
FROM person
JOIN person_order ON person_order.person_id=person.id
JOIN menu ON menu.id=person_order.menu_id
WHERE ((menu.pizza_name='pepperoni pizza' OR menu.pizza_name='cheese pizza')
        AND person.gender='female')
GROUP BY person.name
HAVING COUNT(name) = 2
ORDER BY 1;