drop table if exists employees cascade;
drop table if exists titles cascade;
drop table if exists departments cascade;
drop table if exists dept_emp cascade;
drop table if exists depart_manager cascade;
drop table if exists salaries cascade;


-- ********************* TITLES ***************** 
create table titles
(title_id varchar primary key,
title varchar
);



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



-- ************************************  DEPARTMENTS
create table departments (
	depart_id varchar primary key,
	depart_name varchar
);


-- ************************************ DEPT_EMP
create table dept_emp (
	emp_id int references employees(emp_id),
	depart_id varchar references departments(depart_id)
	);


-- ************************************ DEPART_MANAGER
create table depart_manager (
	depart_id varchar references departments(depart_id),
	emp_id int references employees(emp_id)
);


-- ************************************ SALARIES
-- create the salaries table
create table salaries
(emp_id int references employees(emp_id),
salary varchar
);







