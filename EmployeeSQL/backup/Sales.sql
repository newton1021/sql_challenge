select e.emp_no, e.last_name, e.first_name,d.depart_name
from employees as e
left join dept_emp as de on e.emp_no = de.emp_id
left join departments as d on de.depart_no = d.depart_id
where depart_name = 'Sales';


select e.emp_no, e.last_name, e.first_name,d.depart_name
from employees as e
left join dept_emp as de on e.emp_no = de.emp_id
left join departments as d on de.depart_no = d.depart_id
where depart_name = 'Sales' or depart_name = 'Development';