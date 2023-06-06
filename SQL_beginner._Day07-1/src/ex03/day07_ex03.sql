WITH sample1 AS (SELECT pizzeria.name AS name, COUNT(person_visits.id) AS total_count
                 FROM person_visits
                          JOIN pizzeria on person_visits.pizzeria_id = pizzeria.id
                 GROUP BY pizzeria.name),
     sample2 AS (SELECT pizzeria.name AS name1, COUNT(person_order.id) AS total_count
                 FROM pizzeria
                          JOIN menu ON pizzeria.id = menu.pizzeria_id
                          JOIN person_order ON person_order.menu_id = menu.id
                 GROUP BY pizzeria.name),
     UN AS (SELECT *
            FROM sample1
            UNION ALL
            SELECT *
            FROM sample2)
SELECT name, SUM(total_count) AS total_count
FROM UN
GROUP BY name
ORDER BY 2 DESC, 1 ASC;





