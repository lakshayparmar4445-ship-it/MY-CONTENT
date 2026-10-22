CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO departments (dept_id, dept_name, location) VALUES
(1, 'IT', 'Mumbai'),
(2, 'HR', 'Delhi'),
(3, 'Finance', 'Pune'),
(4, 'Marketing', 'Chennai');

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    dept_id INT
);

INSERT INTO employees (emp_id, emp_name, salary, dept_id) VALUES
(1, 'Rahul', 60000, 1),
(2, 'Priya', 45000, 2),
(3, 'Amit', 75000, 1),
(4, 'Sneha', 50000, 3),
(5, 'Rohan', 30000, 2),
(6, 'Pooja', 90000, 1),
(7, 'Vikram', 40000, 3),
(8, 'Neha', 55000, NULL);


select * from employees,departments;
select e.emp_name,e.salary,d.dept_name,d.location from employees as e inner join departments as d on e.dept_id=d.dept_id;
select e.emp_name,e.salary,d.dept_name,d.location from employees as e left join departments as d on e.dept_id=d.dept_id;
select e.emp_name,e.salary,d.dept_name,d.location from employees as e right join departments as d on e.dept_id=d.dept_id;
select e.emp_name,e.salary,d.dept_name,d.location from employees as e left join departments as d on e.dept_id=d.dept_id -- fullouter join
union select e.emp_name,e.salary,d.dept_name,d.location from employees as e right join departments as d on e.dept_id=d.dept_id;

select e.emp_name,e.salary,d.dept_name,d.location from employees as e cross join departments as d  -- cross join