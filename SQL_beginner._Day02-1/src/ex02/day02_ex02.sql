SELECT COALESCE(person.name,'-') as person_name, main_pv.visit_date as visit_date,
       COALESCE(pizzeria.name,'-') as pizzeria_name
-- SELECT person.name AS person_name
--      , main_pv.visit_date, pizzeria.name as pizzeria_name
FROM person
FULL JOIN
(SELECT * FROM person_visits
WHERE (visit_date BETWEEN '2022-01-01' AND '2022-01-03')
)AS main_pv ON person.id=main_pv.person_id
FULL JOIN pizzeria on pizzeria.id = main_pv.pizzeria_id
ORDER BY 1,2,3;
