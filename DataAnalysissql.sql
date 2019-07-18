-- List the following details of each employee: employee number, last name, first name, gender, and salary
select distinct employees.emp_no,last_name,first_name,gender,salary  
from employees inner join salaries
on employees.emp_no=salaries.emp_no ;

-- List employees who were hired in 1986.
select count(emp_no) from employees 
where hire_date BETWEEN symmetric to_date('1986-01-01','YYYY-MM-DD')
and to_date('1986-12-01','YYYY-MM-DD');

-- List the manager of each department with the following information: department number, department name, 
-- the manager's employee number, last name, first name, and start and end employment dates.
select distinct dept_manager.dept_no,dept_Name, dept_manager.emp_no,from_date,to_date,last_name,first_name 
from dept_manager inner join departments
on dept_manager.dept_no=departments.dept_no 
inner join employees on dept_manager.emp_no=employees.emp_no;

-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
select distinct employees.emp_no,last_name,first_name,dept_Name 
from employees inner join dept_emp
on dept_emp.emp_no=employees.emp_no
inner join departments
on dept_emp.dept_no=departments.dept_no;

-- List all employees whose first name is "Hercules" and last names begin with "B."
select * from employees 
where first_name='Hercules' and last_name like 'B%'

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
select employees.emp_no,last_name,first_name,dept_Name 
from dept_emp inner join employees
on dept_emp.emp_no=employees.emp_no
inner join departments 
on dept_emp.dept_no=departments.dept_no
where dept_Name='Sales';

-- List all employees in the Sales and Development departments, including their employee number
-- , last name, first name, and department name.

select employees.emp_no,last_name,first_name,dept_Name 
from dept_emp inner join employees
on dept_emp.emp_no=employees.emp_no
inner join departments 
on dept_emp.dept_no=departments.dept_no
where dept_Name='Sales'or dept_Name='Development';

-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.

select last_name,count(*) as frequency_count from employees 
group by last_name 
order by frequency_count desc;

									
