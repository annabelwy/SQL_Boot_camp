CREATE UNIQUE INDEX IF NOT EXISTS idx_menu_unique ON menu (pizzeria_id, pizza_name);
SET enable_seqscan TO off;
EXPLAIN ANALYZE
SELECT * FROM menu WHERE menu.pizza_name='supreme pizza';