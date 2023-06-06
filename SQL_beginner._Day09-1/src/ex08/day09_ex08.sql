create
or replace function fnc_fibonacci (pstop integer default 10)
returns table (n integer) as $$
with recursive fib(a, b) as (
select 0,1 -- это по дефолту
union
select b, a+b from fib --повторяется каждый раз
    where b < pstop -- условие выхода
)
    select a from fib;


$$ language sql;

select * from fnc_fibonacci(100);
select * from fnc_fibonacci();