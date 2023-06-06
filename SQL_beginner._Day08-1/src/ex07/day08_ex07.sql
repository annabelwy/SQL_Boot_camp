--Session 1
begin transaction isolation level REPEATABLE READ;
--Session 2
begin transaction isolation level REPEATABLE READ;
--Session 1
update pizzeria set rating = 3.0 where id = 1;
--Session 2
update pizzeria set rating = 4.0 where id = 2;
--Session 1
update pizzeria set rating = 5.0 where id = 2;
--Session 2
update pizzeria set rating = 4.1 where id = 1;
--Session 1
commit;
--Session 2
commit;
