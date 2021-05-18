drop table if exists employees;
drop table if exists titles;
drop table if exists departments;
drop table if exists dept_emp;
drop table if exists depart_manager;
drop table if exists salaries;


-- ********************* TITLES ***************** 
create table titles
(title_id varchar primary key,
title varchar
);

-- ********** load data ***************
-- truncate table titles;
-- copy titles(title_id, title)
-- From '/Volumes/Ditanium Crystals/Boot Camp/Homework/09-SQL/Instructions/data/titles.csv'
-- delimiter ','
-- csv header;

-- select * from titles;




-- ************************************ EMPLOYEES
create table employees (
	emp_ID int not null primary key,
	emp_title_id varchar,
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex char,
	hire_date date,
	constraint title 
		foreign key(emp_title_id)
			REFERENCES titles(title_id)
);


-- ******** load data
-- truncate table employees;

-- copy employees(emp_ID, emp_title_id, birth_date, first_name, last_name, sex, hire_date)
-- From '/Volumes/Ditanium Crystals/Boot Camp/Homework/09-SQL/Instructions/data/employees.csv'
-- delimiter ','
-- csv header;

-- select * from employees;


-- ************************************  DEPARTMENTS
create table departments (
	depart_id varchar primary key,
	depart_name varchar
);



-- ******** load data
-- truncate table departments;
-- copy departments(depart_id, depart_name)
-- From '/Volumes/Ditanium Crystals/Boot Camp/Homework/09-SQL/Instructions/data/departments.csv'
-- delimiter ','
-- csv header;
-- select * from departments;


-- ************************************ DEPT_EMP
create table dept_emp (
	emp_id int references employees(emp_id),
	depart_id varchar references departments(depart_id)
	);
	

-- ******** load data
-- truncate table dept_emp;

-- copy dept_emp(emp_id, depart_id)
-- From '/Volumes/Ditanium Crystals/Boot Camp/Homework/09-SQL/Instructions/data/dept_emp.csv'
-- delimiter ','
-- csv header;

-- select * from dept_emp;


-- ************************************ DEPART_MANAGER
create table depart_manager (
	depart_id varchar references departements(depart_id),
	emp_id int references employees(emp_id)
);




-- ******** load data *********
-- truncate table depart_manager;
-- copy depart_manager(depart_id, emp_id)
-- From '/Volumes/Ditanium Crystals/Boot Camp/Homework/09-SQL/Instructions/data/dept_manager.csv'
-- delimiter ','
-- csv header;
-- select * from depart_manager;


-- ************************************ SALARIES
-- create the salaries table
create table salaries
(emp_id int references employees(emp_id),
salary varchar
);


-- ***************** load data ***********
-- truncate table salaries;
-- copy salaries(empolyee_id, salary)
-- From '/Volumes/Ditanium Crystals/Boot Camp/Homework/09-SQL/Instructions/data/salaries.csv'
-- delimiter ','
-- csv header;
-- select * from salaries;







