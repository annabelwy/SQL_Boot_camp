--Session 1
SHOW TRANSACTION ISOLATION LEVEL;
--Session 2
SHOW TRANSACTION ISOLATION LEVEL;
--Session 1
begin;
--Session 2
begin;
--Session 1
select * from pizzeria where name  = 'Pizza Hut';
--Session 2
select * from pizzeria where name  = 'Pizza Hut';
--Session 1
update pizzeria set rating = 4 where pizzeria.name='Pizza Hut';
--Session 2
update pizzeria set rating = 3.6 where pizzeria.name='Pizza Hut';
--Session 1
commit;
--Session 2
commit;
--Session 1
select * from pizzeria where name  = 'Pizza Hut';
--Session 2
select * from pizzeria where name  = 'Pizza Hut';


