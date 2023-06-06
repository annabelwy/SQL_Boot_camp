WITH women_visits AS (SELECT pizzeria.name AS pizzeria_name FROM pizzeria
JOIN person_visits pv on pizzeria.id = pv.pizzeria_id
JOIN person p on p.id = pv.person_id
WHERE (p.gender='female')),
men_visits AS (SELECT pizzeria.name AS pizzeria_name FROM pizzeria
JOIN person_visits pv on pizzeria.id = pv.pizzeria_id
JOIN person p on p.id = pv.person_id
WHERE (p.gender='male')),
w_ex_m AS (SELECT women_visits.pizzeria_name FROM women_visits
    EXCEPT ALL SELECT men_visits.pizzeria_name FROM men_visits),
m_ex_w AS (SELECT men_visits.pizzeria_name FROM men_visits
    EXCEPT ALL SELECT women_visits.pizzeria_name FROM women_visits)
SELECT w_ex_m.pizzeria_name FROM w_ex_m
UNION ALL
SELECT m_ex_w.pizzeria_name FROM m_ex_w
ORDER BY 1;

