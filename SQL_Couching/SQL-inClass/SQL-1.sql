create database debugshala;
use debugshala;
show databases;

#table employee---------------------------------------------------------------------------------------------------

create table Employee(
EmpId int,
first_name varchar(50),
last_name varchar(50),
salary int(11),
DeptId varchar(70)
);

show databases;
show tables;

desc employee;
desc students;


alter table employee
modify DeptId varchar(20);


insert into employee values(1,"khushi","soni",25000,"IT"); 

select * from employee; 

insert into employee values
(2,'rahul','sharma',25000,'HR'),
(3,'priya','verma',60000,'IT'),
(4,'amit','singh',55000,'Sales'),
(5,'neha','patel',45000,'Marketing'),
(6,'ravi','verma',30000,'Sales');

select * from employee;

#table departments-------------------------------------------------------------------------------------------------------------

create table departments (
    dept_id int primary key,
    dept_name varchar(50),
    location varchar(50)
);

insert into departments values
(1,'hr','delhi'),
(2,'finance','mumbai'),
(3,'it','pune'),
(4,'marketing','jaipur'),
(5,'sales','indore'),
(6,'support','bhopal'),
(7,'operations','chennai'),
(8,'legal','kolkata'),
(9,'admin','lucknow'),
(10,'research','hyderabad');

select * from departments;

#table products---------------------------------------------------------------------------------

create table products (
    product_id int primary key,
    product_name varchar(50),
    price int,
    category varchar(50)
);

insert into products values
(1,'laptop',55000,'electronics'),
(2,'mouse',700,'electronics'),
(3,'keyboard',1200,'electronics'),
(4,'chair',3500,'furniture'),
(5,'table',5000,'furniture'),
(6,'bottle',400,'kitchen'),
(7,'bag',1800,'fashion'),
(8,'watch',2500,'fashion'),
(9,'phone',22000,'electronics'),
(10,'printer',9000,'electronics');

select * from products;

#table customers--------------------------------------------------------------------------------------------

create table customers (
    customer_id int primary key,
    customer_name varchar(50),
    city varchar(50),
    phone varchar(15)
);

insert into customers values
(1,'arjun','delhi','9876543210'),
(2,'riya','mumbai','9876543211'),
(3,'vivek','pune','9876543212'),
(4,'meena','jaipur','9876543213'),
(5,'ankit','indore','9876543214'),
(6,'nisha','bhopal','9876543215'),
(7,'tarun','lucknow','9876543216'),
(8,'komal','hyderabad','9876543217'),
(9,'sahil','nagpur','9876543218'),
(10,'isha','chennai','9876543219');

select * from customers;

#table orders-------------------------------------------------------------------------------------------

create table orders (
    order_id int primary key,
    customer_name varchar(50),
    product_name varchar(50),
    quantity int
);

insert into orders values
(1,'arjun','laptop',1),
(2,'riya','mouse',2),
(3,'vivek','keyboard',1),
(4,'meena','chair',2),
(5,'ankit','table',1),
(6,'nisha','phone',1),
(7,'tarun','watch',2),
(8,'komal','bag',1),
(9,'sahil','printer',1),
(10,'isha','bottle',4);

select * from orders;

#---------------------------------------------------finish asignment------------------------------------------------------------------------

select * from employee where salary > 50000;
select last_name from employee;

SET SQL_SAFE_UPDATES = 0;

update employee
set salary=20000
where EmpId=2;

select * from employee;

update employee
set empid=10
where first_name="neha";


delete from employee where EmpId=6;

insert into employee values
(6,"Ravi","Sharma",null,"IT");

insert into employee values
(7,"pooja","verma",25000,null);


select * from employee where salary is null;

create table students(
id int,
name varchar(40),
age int(2),
city varchar(50)
);

desc students;

select * from students;

insert into students values(1,"lakshay parmar","CSE-DS","lakshay@gmail.com",6657965567),
(2,"pranjal gai","CSE-DS","pranjal@gmail.com",6657470567),
(3,"ashutosh dhakde","CSE","ashutosh@gmail.com",6658585567),
(4,"bhavesh joshi","CSE-IT","bhavesh@gmail.com",6657585678);


use debugshala;
show tables;
select * from employee;

alter table employee add email varchar(20);

alter table employee drop column last_name;

select * from employee;

update employee SET email = 'lakshay@gmail.com' where EmpId = 1;
update employee SET email = 'pranjal@gmail.com' WHERE EmpId = 2;
update employee SET email = 'rohit@gmail.com'   WHERE EmpId = 3;
update employee SET email = 'ankit@gmail.com'   WHERE EmpId = 4;
update employee SET email = 'raja@gmail.com'    WHERE EmpId = 10;
update employee SET email = 'pranav@gmail.com'  WHERE EmpId = 6;
update employee SET email = 'shanti@gmail.com'  WHERE EmpId = 7;

alter table products
add brand varchar(50);


select * from products;

alter table products
rename column stock_quality to stock_quantity;

-- truncate table products;

insert into products values
(1,"iphone 15",79999,"Electronics",25,"Apple"),
(2,"Samsung TV 43",32999,"Electronics",15,"Samsung"),
(3,"Nike Running Shoes",4999,"Footwear",50,"Nike"),
(4,"Levi's Jeans",2499,"Clothing",100,"Levis"),
(5,"Sony Headphones",8999,"Electronics",30,"Sony"),
(6,"Adidas T-shirt",1299,"Clothing",80,"Adidas"),
(7,"Dell Laptop",55999,"Electronics",10,"Dell"),
(8,"Puma Backpack",1999,"Accessories",40,"Puma"),
(9,"HP Printer",12999,"Electronics",12,"HP"),
(10,"Boat Smartwatch",2999,"Electronics",60,"Boat");

alter table products
rename column product_id to product_ids;

rename table products to product;

select * from product;
desc product;

alter table product
modify product_name varchar(20);

show tables;

truncate table students;

select * from students;

drop table students;

show databases;

drop database ipsemployee;


CREATE TABLE student_marksheet (
    roll_no INT PRIMARY KEY,
    student_name VARCHAR(50),
    class_section VARCHAR(10),
    marks INT,
    age INT,
    admission_date DATE
);

INSERT INTO student_marksheet VALUES
(1, 'Rahul Sharma', 'A', 85, 16, '2023-06-15'),
(2, 'Priya Singh', 'B', 92, 15, '2023-06-10'),
(3, 'Aman Verma', 'A', 78, 17, '2023-07-01'),
(4, 'Sneha Patel', 'C', 92, 16, '2023-06-20'),
(5, 'Vikram Rao', 'B', 65, 15, '2023-06-05'),
(6, 'Divya Soni', 'A', 88, 16, '2023-06-25'),
(7, 'Karan Mehta', 'C', 55, 17, '2023-07-10'),
(8, 'Anjali Gupta', 'B', 78, 15, '2023-06-08'),
(9, 'Rohan Das', 'A', 45, 16, '2023-07-05'),
(10, 'Neha Joshi', 'C', 88, 15, '2023-06-12');

select * from student_marksheet order by age asc;

select * from student_marksheet order by age,student_name;

select * from student_marksheet where class_section='A' order by marks desc limit 1;

select count(*) from student_marksheet;

select sum(marks) from student_marksheet;


select avg(salary) from employee;

select min(marks) from student_marksheet;

select min(marks),max(marks),avg(marks) from student_marksheet;

select min(marks),max(marks),avg(marks) from student_marksheet group by class_section;

select min(marks) as min_marks,max(marks) as max_marks,avg(marks) as avg_marks from student_marksheet group by class_section;

select deptid,count(*) as total_emp from employee group by deptId having count(*)>2;  -- This SQL query finds departments that have more than 2 employees.

create table students(
id int(10),
name varchar(20) not null
);

desc students;

insert into students values
(101,"khushi"),
(102,"badbu");

CREATE TABLE stu (
    id INT(10) UNIQUE,
    name VARCHAR(20)
);


insert into stu values
(101,"khushi"),
(102,"badbu");


select * from stu;


create table school(
id int primary key,
name varchar(50) unique not null); 

desc school;

create table voting(
id int primary key,
name varchar(20) not null,
age int check(age>=18));



insert into voting 
values (101,"blah",18),
(102,"bhavesh",18);


create table department(
id int primary key,
name varchar(20) unique not null,
age int check(age>=18));

create table cpk(
id int,
name varchar(50),
primary key(id,name)
);

select * from cpk;

insert into cpk values(101,"sakshi");
insert into cpk values(102,"lokesh");
insert into cpk values(103,"sakshi");
insert into cpk values(101,"sakshi");

select * from cpk where id = 101;


create table clg(
id int primary key,
name varchar(50)
);

create table studentss(
id int primary key,
name varchar(50) ,
clg_id int,
foreign key(clg_id) references clg(id)
);

drop table studentss;

create table kk(
id int,
name varchar(20),
kk_id int,
foreign key(kk_id) references studentss(id));


insert into clg values(101,"pranjal");
insert into clg values(102,"lokesh");

insert into studentss values(1001,"Ips",101);


select * from clg,studentss;


create table nn(
id int,
name varchar(50),
age int,
gender varchar(50) default "male"
);

insert into nn(id,name,age) values(101,"lakshay",21);

select * from nn;

select curdate();
select curtime();
select now();
select sysdate();

-- drop table date;


create table date(
id int,
date date);

insert into date values(1,"2026-10-10");
select * from date;

select year(date) as yr from date;
select hour(date) as hr from date;
select month(date) as month from date;
select day(date) as day from date;

create table dts(
id int,
order_details datetime
);

insert into dts values
(1,"2020-04-17 06-30-00");

select hour(order_details) from dts;
select minute(order_details) from dts;
select second(order_details) from dts;

select concat(id," ",order_details) from dts;
select datediff("2024-11-07","2024-11-01") as datediff;
select date_add("2024-11-01",interval 7 day);
select extract(year from "2024-11-01") as yearextra;


create table employee2(
id int,
joining_date date,
joining_time time
);
alter table employee2
add end_date date;

SET SQL_SAFE_UPDATES = 0;

update employee2
set end_date="2026-10-14"
where id=1;

update employee2
set end_date="2026-10-17"
where id=2;

select * from employee2;

insert into employee2 values
(2,"2024-10-01","10:40:06");

select concat(joining_date," ",joining_time) as joining_datetime from employee2;
select joining_date,end_date,datediff(end_date,joining_date) from employee2;


select 10*3;
select 10-3;

select 10+3;
select 10/3;
select 10%3;

select * from employee;
select salary,first_name from employee where salary=25000;
select salary,first_name from employee where salary!=25000;


select * from employee where deptid="IT" and salary>=25000;
select * from employee where deptid="IT" or salary>=25000;
select * from employee where  not salary>=25000;

select * from employee where salary between 25000 and 55000;
select * from employee where salary not between 25000 and 55000;

select * from employee where deptid in ("HR","Marketing");
select * from employee where deptid not in ("HR","Marketing");

select * from employee where first_name like "%n%";
select * from employee where first_name like "r____";
select * from employee where first_name like "n%";
select * from employee where deptid is null;