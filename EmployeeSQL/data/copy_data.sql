
-- ********** load data ***************
truncate table titles cascade;
copy titles(title_id, title)
From '/Volumes/Ditanium Crystals/Boot Camp/Homework/09-SQL/Instructions/data/titles.csv'
delimiter ','
csv header;

copy employees(emp_ID, emp_title_id, birth_date, first_name, last_name, sex, hire_date)
From '/Volumes/Ditanium Crystals/Boot Camp/Homework/09-SQL/Instructions/data/employees.csv'
delimiter ','
csv header;

copy departments(depart_id, depart_name)
From '/Volumes/Ditanium Crystals/Boot Camp/Homework/09-SQL/Instructions/data/departments.csv'
delimiter ','
csv header;

copy dept_emp(emp_id, depart_id)
From '/Volumes/Ditanium Crystals/Boot Camp/Homework/09-SQL/Instructions/data/dept_emp.csv'
delimiter ','
csv header;

copy depart_manager(depart_id, emp_id)
From '/Volumes/Ditanium Crystals/Boot Camp/Homework/09-SQL/Instructions/data/dept_manager.csv'
delimiter ','
csv header;

copy salaries(emp_id, salary)
From '/Volumes/Ditanium Crystals/Boot Camp/Homework/09-SQL/Instructions/data/salaries.csv'
delimiter ','
csv header;
