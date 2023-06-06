WITH visits AS (SELECT pizzeria.name AS pizzeria_name, visit_date, person_id FROM pizzeria
JOIN person_visits ON pizzeria.id=person_visits.pizzeria_id
JOIN person ON person.id=person_visits.person_id
WHERE (person.name ='Andrey'))
SELECT pizzeria_name FROM visits
EXCEPT
SELECT pizzeria_name FROM visits
JOIN person_order ON visit_date = order_date AND visits.person_id = person_order.person_id
ORDER BY 1;
