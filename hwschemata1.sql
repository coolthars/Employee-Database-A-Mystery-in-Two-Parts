
CREATE TABLE departments (
  dept_no VARCHAR PRIMARY KEY,
  dept_name VARCHAR(30) NOT NULL);
  

CREATE TABLE employees (
  emp_no INT primary key ,
  birth_date DATE,
  first_name VARCHAR,
  last_name VARCHAR,
  gender CHAR,
hire_date DATE);
  
CREATE TABLE dept_manager (
  dept_no VARCHAR,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
   emp_no INT ,FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  from_date DATE,
  to_date DATE);
  
CREATE TABLE dept_emp (
  emp_no INT ,FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  dept_no VARCHAR,FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  from_date DATE,
  to_date DATE);

    
CREATE TABLE salaries (
  emp_no INT ,FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  salary INT,
  from_date DATE,
  to_date DATE);

CREATE TABLE titles(
	emp_no INT ,FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  title VARCHAR,
  from_date DATE,
  to_date DATE);

