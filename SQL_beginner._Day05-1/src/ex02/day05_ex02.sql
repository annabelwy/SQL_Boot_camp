CREATE INDEX IF NOT EXISTS idx_person_name ON person (name);
SET enable_seqscan TO off;
EXPLAIN ANALYZE
SELECT name FROM person WHERE (UPPER(person.name)='ANNA'); -- если с загл. буквами, то через индексацию, иначе бы был просто поиск