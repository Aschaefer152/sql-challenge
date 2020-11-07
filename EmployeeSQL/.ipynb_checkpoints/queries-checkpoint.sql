--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
--create table view for future reference
create view Employee_Salary as
select Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex, Salaries.salary
from Employees
Join Salaries
on (Employees.emp_no = Salaries.emp_no)

--view table Employee_Salary
Select * from Employee_Salary;

--2. List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from Employees
where hire_date 
between '01/01/1986' and '12/31/1986'


--3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.

select Employees.last_name, Employees.first_name, Department_Manager.emp_no, Department_Manager.dept_no, Departments.dept_name 
from Employees
Join Department_Manager
on (Employees.emp_no = Department_manager.emp_no)
	Join Departments
	on (Department_Manager.dept_no=Departments.dept_no)

--4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

select Employees.last_name, Employees.first_name, Employee_Department.emp_no, Departments.dept_name 
from Employees
Join Employee_Department
on (Employees.emp_no = Employee_Department.emp_no)
	Join Departments
	on (Employee_Department.dept_no=Departments.dept_no)


--5. List first name, last name, and sex for employees whose 
--first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%' 

--6. List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.
select E.emp_no, E.last_name, E.first_name, Departments.dept_name
from Employee_Department as ED
Join Employees as E 
on (E.emp_no = ED.emp_no)
Join Departments
on (ED.dept_no = Departments.dept_no)
where dept_name = 'Sales'
	
--7. List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
select E.emp_no, E.last_name, E.first_name, Departments.dept_name
from Employee_Department as ED
Join Employees as E 
on (E.emp_no = ED.emp_no)
Join Departments
on (ED.dept_no = Departments.dept_no)
where (dept_name = 'Sales') OR (dept_name='Development');

--8. In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
select count(*), last_name
from Employees
group by last_name
having count (*) >1
order by last_name DESC	






