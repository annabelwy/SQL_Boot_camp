--Session 1
begin transaction isolation level READ COMMITTED;
--Session 2
begin transaction isolation level READ COMMITTED ;
--Session 1
select SUM(rating) from pizzeria;
--Session 2
update pizzeria set rating = 1 where pizzeria.name='Pizza Hut';
commit;
--Session 1
select SUM(rating) from pizzeria;
commit;
select SUM(rating) from pizzeria;
--Session 2
select SUM(rating) from pizzeria;
