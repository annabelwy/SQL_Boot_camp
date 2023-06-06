SELECT missing_date::date
FROM generate_series('2022-01-01','2022-01-10', interval '1 day') as missing_date
LEFT JOIN (SELECT visit_date FROM person_visits
WHERE ((person_id=1 OR person_id=2)
           AND  person_visits.visit_date BETWEEN '2022-01-01'
               AND '2022-01-10')) AS visits
ON missing_date.date=visits.visit_date
WHERE visits.visit_date is NULL;
