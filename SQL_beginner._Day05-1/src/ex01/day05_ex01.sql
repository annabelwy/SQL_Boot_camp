SET enable_seqscan TO off;
EXPLAIN ANALYZE
SELECT m.pizza_name AS pizza_name, pizzeria.name AS pizzeria_name
FROM pizzeria
    JOIN menu m ON pizzeria.id=m.pizzeria_id;