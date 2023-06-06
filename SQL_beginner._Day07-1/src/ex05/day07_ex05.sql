SELECT DISTINCT
    (SELECT name
     FROM person WHERE person.id = person_order.person_id)  AS name
FROM person_order
ORDER BY 1;
