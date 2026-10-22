CREATE TABLE employees1 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    age INT,
    department VARCHAR(30)
);

use debugshala;

INSERT INTO employees1 (id, name, salary, age, department)
VALUES
(1, 'Amit', 30000, 22, 'IT'),
(2, 'Ravi', 45000, 25, 'HR'),
(3, 'Priya', 60000, 28, 'IT'),
(4, 'Neha', 35000, 24, 'Sales'),
(5, 'Rahul', 70000, 30, 'IT'),
(6, 'Sneha', 50000, 27, 'HR'),
(7, 'Raj', 40000, 23, 'Sales'),
(8, 'Pooja', 55000, 26, 'IT'),
(9, 'Karan', 25000, 21, 'HR'),
(10, 'Anjali', 65000, 29, 'Sales');

select * from employees1 where salary>=40000;
select * from employees1 where age<=25;
select * from employees1 where department="IT";
select * from employees1 where salary!=35000;
select * from employees1 where salary between 30000 and 60000;
select * from employees1 where department in ("HR","IT");
select * from employees1 where name like "R%";
select * from employees1 where name like "%a";
select * from employees1 where department="IT" and salary>50000;
select * from employees1 where department="IT" or department="HR";
select * from employees1 where not department ="IT";
select * from employees1 where age>24 and salary<60000;
select * from employees1 where department="Sales" or salary>60000;
select * from employees1 where department!="HR" and salary between 35000 and 75000;
select * from employees1 where (department="IT" and salary>50000) or (department="HR" and salary>50000);

select * from employees1;

