SELECT menu.pizza_name, menu.price, pizzeria.name, person_visits.visit_date
FROM menu
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
JOIN person_visits ON pizzeria.id=person_visits.pizzeria_id
JOIN person ON person.id = person_visits.person_id
 WHERE ((menu.price BETWEEN 800 AND 1000) AND person.name='Kate')
ORDER BY 1,2,3;