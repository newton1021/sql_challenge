-- 4. ****************** employee and department
select e.emp_id, e.last_name, e.first_name,de.depart_id,d.depart_name
from employees as e
left join dept_emp as de on e.emp_id = de.emp_id
left join departments as d on de.depart_id = d.depart_id
order by d.depart_name;



-- e.emp_no, e.last_name, e.first_name,de.depart_no