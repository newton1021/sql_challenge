-- 3. ******************* manager and Department ************************
select d.depart_id, d.depart_name, m.emp_id, m.last_name, m.first_name
from departments as d
left join depart_manager as dm on d.depart_id = dm.depart_id
left join employees as m on dm.emp_id = m.emp_id;