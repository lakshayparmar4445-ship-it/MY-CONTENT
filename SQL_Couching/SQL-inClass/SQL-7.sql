-- Create table
CREATE TABLE students2 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    course VARCHAR(50),
    marks INT
);

-- Insert values
INSERT INTO students2 (id, name, age, course, marks)
VALUES
(1, 'Rahul', 20, 'Data Science', 85),
(2, 'Aman', 21, 'Computer Science', 78),
(3, 'Priya', 20, 'Data Science', 92),
(4, 'Neha', 22, 'AI & ML', 88),
(5, 'Arjun', 21, 'Computer Science', 75);

-- View the data
SELECT * FROM students2;


select id,name,age,course,marks,sum(marks) over(order by age) as total_marks from students2;
select id,name,age,course,marks,sum(marks) over(partition by course order by age) as total_marks from students2;
select id,name,age,course,marks,lag(marks) over(order by age desc) as rank_marks from students2;
select id,name,age,course,marks,lead(marks) over(order by age desc) as total_marks from students2;
select id,name,age,course,marks, rank() over(order by age desc) as total_marks from students2;
select id,name,age,course,marks,dense_rank() over(order by age desc) as total_marks from students2;
select id,name,age,course,marks,row_number() over(order by age desc) as total_marks from students2;
select id,name,age,course,marks,
first_value(name) over(partition by course order by marks desc) as high_marks
,last_value(name) over(partition by course order by marks desc rows between unbounded preceding and unbounded following) as lowest_marks
from students2;




select user();
select user,host from mysql.user;

create user "lakshay"@"localhost" identified by "12345";
show grants for "lakshay"@"localhost";




grant select on employee.employee to 'lakshay'@'localhost'; 
grant all privileges on employee.employee to 'lakshay'@'localhost'; 

revoke delete on employee.employee from 'lakshay'@'localhost';
revoke all privileges ,grant option from 'lakshay'@'localhost';