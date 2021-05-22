
-- ********** first name is Hurcules  last name B..... **************
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';


select last_name, count(first_name) 
from employees
group by last_name
order by last_name desc;