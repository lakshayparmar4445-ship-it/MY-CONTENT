use debugshala;

create table employe3(
empid int,
ename varchar(50),
dept varchar(50),
salary int,
doj date,
dob date);
desc employe3;

alter table employe3
add email varchar(50);

alter table employe3
modify ename varchar(40);

alter table employe3
drop email;

insert into employe3 values
(105,'Sejal panwar','IT',10000,'2020-12-04','2005-11-15');

delete from employe3
where empid=104;

select * from employe3;

update employe3
set salary=salary+salary*0.10
where dept="IT";

select ename,salary from employe3 where dept='Sales';

create table dept(
deptid int primary key,
deptname varchar(50) not null
);

desc dept;

create table employee4(
empid int primary key,
email varchar(80) unique,
salary int default(15000) check(salary>0));


select * from employee4;

create table payroll(
empid int,
foreign key(empid) references employee4(empid));

desc payroll;



select curdate();
select sysdate();
select now();

select ename,year(doj) from employe3;

select datediff(curdate(),doj) from employe3;

select date_add(doj,interval 90 day) from employe3;

select count(empid),sum(salary) from employe3;

select avg(salary),min(salary),max(salary) from employe3;

select * from employe3;

select dept,count(*),sum(salary) from employe3 group by dept;

select dept from employe3 where salary>=40000;



