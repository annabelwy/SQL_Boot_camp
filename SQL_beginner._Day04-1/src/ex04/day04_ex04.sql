CREATE VIEW v_symmetric_union AS
    (WITH R AS (SELECT person_visits.person_id FROM person_visits WHERE
    (person_visits.visit_date='2022-01-02')),
S AS (SELECT person_visits.person_id FROM person_visits WHERE
(person_visits.visit_date='2022-01-06')),
R_sub AS (SELECT * FROM R
EXCEPT SELECT * FROM S),
S_sub AS (SELECT * FROM S
EXCEPT SELECT * FROM R)
    SELECT * FROM R_sub
    UNION
    SELECT * FROM S_sub ORDER BY person_id);
