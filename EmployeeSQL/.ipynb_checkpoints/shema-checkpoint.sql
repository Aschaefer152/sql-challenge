--create employee table
drop table Employees;
create table Employees (
	emp_no INT NOT NULL,
	emp_title VARCHAR NOT NULL,
	birth_date VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date VARCHAR NOT NULL,
	PRIMARY KEY (emp_no)
);

--vieiw table
select * from Employees;


--create table
drop table Employee_Department;
CREATE TABLE Employee_Department (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	foreign key (emp_no) references Employees (emp_no)
);


--view table 
select * from Employee_Department;

--create table Departments
drop table Departments;
create table Departments(
	dept_no VARCHAR, 
	dept_name VARCHAR,
	PRIMARY KEY (dept_no)
);

--view table
select * from Departments;

--create table for titles
drop table Titles;
create table Titles (
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR 
);

--view table 
select * from Titles;

--create table Salaries
drop table Salaries;
create table Salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	foreign key (emp_no) references Employees (emp_no) 
);

--view table
select * from Salaries;

--create table Department_Manager
drop table Department_Manager;
create table Department_Manager (
	dept_no VARCHAR,
	emp_no INT NOT NULL,
	foreign key (emp_no) references Employees (emp_no),
	foreign key (dept_no) references Departments (dept_no)
);

--view table
select * from Department_Manager;

--alter employees to add foreign key
ALTER TABLE Employees
ADD foreign key (emp_title) references Titles (title_id)

--view altered employees table
select * from Employees;


