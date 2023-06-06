WITH sample1 AS (
    SELECT pizzeria.name AS name, COUNT(person_visits.id) AS count,
    'visit' AS action_type
FROM person_visits
    JOIN pizzeria
on person_visits.pizzeria_id = pizzeria.id
GROUP BY pizzeria.name
ORDER BY count DESC LIMIT 3),
    sample2 AS (
SELECT pizzeria.name, COUNT (person_order.id) AS count,
    'order'
FROM pizzeria
    JOIN menu
ON pizzeria.id = menu.pizzeria_id
    JOIN person_order ON person_order.menu_id = menu.id
GROUP BY pizzeria.name
ORDER BY count DESC LIMIT 3)
SELECT *
FROM sample1
UNION
SELECT *
FROM sample2
ORDER BY 3 ASC, count DESC;
