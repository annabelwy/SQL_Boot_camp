CREATE UNIQUE INDEX IF NOT EXISTS idx_person_discounts_unique ON ONLY person_discounts (person_id, pizzeria_id);
SET enable_seqscan TO off;
EXPLAIN ANALYZE
SELECT * FROM person_discounts WHERE (person_id=4 AND pizzeria_id=5);