-- 1. ******************* employee list **************
select em.emp_id as id, last_name as "last name", first_name as "First Name", sex, s.salary
from employees as em
left join salaries as s on em.emp_id = s.emp_id;


-- 2. *************** employees from 1985 ************
select first_name, last_name, hire_date 
from employees
where date_part('year', hire_date) = 1985;


-- 3. ******************* manager and Department ************************
select d.depart_id, d.depart_name, m.emp_id, m.last_name, m.first_name
from departments as d
left join depart_manager as dm on d.depart_id = dm.depart_id
left join employees as m on dm.emp_id = m.emp_id;


-- 4. ****************** employee and department
select e.emp_id, e.last_name, e.first_name,de.depart_id,d.depart_name
from employees as e
left join dept_emp as de on e.emp_id = de.emp_id
left join departments as d on de.depart_id = d.depart_id
order by d.depart_name;


-- 5. ********** first name is Hurcules  last name B..... **************
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';


-- 6. ****************** Sales department ************************
select e.emp_id, e.last_name, e.first_name,d.depart_name
from employees as e
left join dept_emp as de on e.emp_id = de.emp_id
left join departments as d on de.depart_id = d.depart_id
where depart_name = 'Sales';


-- 7. ***************** Sales and Development departments *********
select e.emp_id, e.last_name, e.first_name,d.depart_name
from employees as e
left join dept_emp as de on e.emp_id = de.emp_id
left join departments as d on de.depart_id = d.depart_id
where depart_name = 'Sales' or depart_name = 'Development';


-- 8. ********************** Name frequency *********************
select last_name, count(first_name) 
from employees
group by last_name
order by last_name desc;