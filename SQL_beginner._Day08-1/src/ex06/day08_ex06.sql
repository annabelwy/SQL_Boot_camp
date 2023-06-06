--Session 1
begin transaction isolation level REPEATABLE READ;
--Session 2
begin transaction isolation level REPEATABLE READ ;
--Session 1
select SUM(rating) from pizzeria;
--Session 2
update pizzeria set rating = 5 where pizzeria.name='Pizza Hut';
commit;
--Session 1
select SUM(rating) from pizzeria;
commit;
select SUM(rating) from pizzeria;
--Session 2
select SUM(rating) from pizzeria;
