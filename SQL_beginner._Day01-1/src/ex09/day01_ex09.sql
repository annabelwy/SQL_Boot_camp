SELECT name FROM pizzeria
WHERE (id not in (SELECT pizzeria_id FROM person_visits));
SELECT name FROM pizzeria
WHERE NOT EXISTS(SELECT pizzeria_id FROM person_visits
    WHERE pizzeria_id=pizzeria.id);