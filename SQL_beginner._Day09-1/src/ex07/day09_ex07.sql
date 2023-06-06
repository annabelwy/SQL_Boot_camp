create or replace function func_minimum(arr numeric[]) returns numeric as
$$
select min(arr[i])
from generate_subscripts(arr::numeric[], 1) as i
$$ language sql;

select func_minimum(variadic arr => array [10.0, -1.0, 5.0, 4.4]);
