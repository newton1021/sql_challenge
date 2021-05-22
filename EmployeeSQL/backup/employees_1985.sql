-- 2. *************** employees from 1985 ************
select first_name, last_name, hire_date 
from employees
where date_part('year', hire_date) = 1985;