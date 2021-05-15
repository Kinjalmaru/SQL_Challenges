DROP TABLE IF EXISTS titles;
drop table if exists employees;
--drop table if exists departments;
-- create the tables
--titles
CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR
);

SELECT * FROM titles;
--employees
create table employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE,
	FOREIGN KEY (emp_title_id) References titles(title_id)
);

select * from employees;

--departments
create table departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

select * from departments;

--dept_managers
CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no INT,
	FOREIGN KEY (dept_no) References department(dept_no),
	FOREIGN KEY (emp_no) References employees(emp_no),
	PRIMARY KEY ( dept_no, emp_no)
);

select * from dept_manager;

--dept_employees
create table dept_emp (
	emp_no INT,
	dept_np VARCHAR,
	FOREIGN KEY (dept_no) References departments(dept_no),
	FOREIGN KEY (emp_np) References employees(emp_no),
	PRIMARY KEY(emp_np, dept_no)
	
);

create table salaries (
	emp_no INT PRIMARY KEY,
	salary INT,
	FOREIGN KEY (emp_no) References employees(emp_no)
);

--salaries

