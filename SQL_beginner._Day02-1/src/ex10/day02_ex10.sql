SELECT person.name AS person_name1, sub_P.name AS person_name2, person.address AS common_address
FROM person
JOIN person AS sub_P on person.address=sub_P.address WHERE (person.id>sub_P.id)
ORDER BY 1,2;

