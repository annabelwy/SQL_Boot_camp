SELECT person.address
     , ROUND((MAX(person.age) - (ROUND(MIN(person.age), 2) / MAX(person.age))), 2)                                    AS formula
     , ROUND(AVG(person.age), 2)                                                                                      AS average
     , CASE
           WHEN MAX(person.age) - (ROUND(MIN(person.age), 2)/ MAX(person.age)) > AVG(person.age) THEN true
           ELSE false END                                                                                           AS comparison
FROM person
GROUP BY (person.address)
ORDER BY 1;