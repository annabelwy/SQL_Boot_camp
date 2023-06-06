SELECT address, p.name AS name, (COUNT(menu_id)) AS count_of_orders
FROM person
JOIN person_order po on person.id = po.person_id
JOIN menu m on m.id = po.menu_id
JOIN pizzeria p on p.id = m.pizzeria_id
GROUP BY address, p.name
ORDER BY address, name;