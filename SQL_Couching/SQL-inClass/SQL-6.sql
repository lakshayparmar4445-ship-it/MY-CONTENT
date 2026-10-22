CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    author VARCHAR(50),
    price DECIMAL(8,2),
    stock INT
);
INSERT INTO books (title, author, price, stock) VALUES
('Wings of Fire', 'A.P.J. Abdul Kalam', 250, 10),
('The Alchemist', 'Paulo Coelho', 300, 5),
('Sapiens', 'Yuval Noah Harari', 450, 0),
('Rich Dad Poor Dad', 'Robert Kiyosaki', 200, 15);

delimiter //
create procedure GetAllBooks()
begin
select * from books;
end //

call getallbooks();
end //

delimiter //
create procedure getallbooksbyauthor(in a_name varchar(50))
begin
select * from books where author = a_name;
end //

call getallbooksbyauthor("paulo coelho");
end //

DELIMiter ;


CREATE TABLE Employees5 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50),
    dept_id INT
);

INSERT INTO Employees5(emp_id, emp_name, salary, city, dept_id)
VALUES(101, 'Amit', 55000, 'Indore', 10),
(102, 'Rahul', 45000, 'Bhopal', 20),
(103, 'Priya', 65000, 'Delhi', 10),
(104, 'Neha', 75000, 'Mumbai', 30),
(105, 'Rohit', 40000, 'Indore', 20),
(106, 'Sneha', 52000, 'Pune', 30),
(107, 'Vikas', 48000, 'Gwalior', 10),
(108, 'Pooja', 85000, 'Delhi', 30),
(109, 'Ankit', 60000, 'Bhopal', 20),
(110, 'Kavita', 35000, 'Indore', 10);

select * from employees5;

CREATE TABLE Salary_Audit (
    audit_id    INT AUTO_INCREMENT PRIMARY KEY,
    emp_id      INT,
    old_salary  DECIMAL(10,2),
    new_salary  DECIMAL(10,2),
    changed_on  DATETIME
);

select * from salary_audit;

delimiter //
create trigger trg_check_salary1
before insert on employees5
for each row 
begin
if new.salary < 0 then
set new.salary = 0;
end if;
end //

insert into employees5(emp_id,emp_name,salary,city,dept_id)
values(111,'test_user',-500,'Indore',10);
end //

select * from employees5;
end //

create trigger trg_salary_audit
after update on employees5
for each row
begin
if old.salary <> new.salary then
insert into salary_audit(emp_id,old_salary,new_salary,changed_on)
values(old.emp_id,old.salary,new.salary,now());
end if;
end //

update employees5 set salary = 70000 where emp_id = 103;
end //
select * from salary_audit;
end //

delimiter ;