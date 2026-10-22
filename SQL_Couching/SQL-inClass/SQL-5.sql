create table school(
name varchar(20),
stu_id int primary key,
section varchar(20)
);

create table students(
name varchar(20),
stu_id int primary key,
house varchar(20)
);

drop table students;

insert into students values
("lakshay",1,"blue"),
("pranjal",2,"yellow"),
("lokesh",3,"red");

insert into school values
("abc academy",1,"A"),
("def academy",2,"B"),
("gih academy",3,"C");



select st.name,sc.name,sc.section,sc.stu_id,st.house from school as sc inner join students as st on sc.stu_id=sc.stu_id;
select st.name,sc.name,sc.section,sc.stu_id,st.house from school as sc left join students as st on sc.stu_id=sc.stu_id;
select st.name,sc.name,sc.section,sc.stu_id,st.house from school as sc right join students as st on sc.stu_id=sc.stu_id;
select st.name,sc.name,sc.section,sc.stu_id,st.house from school as sc left join students as st on sc.stu_id=sc.stu_id union 
select st.name,sc.name,sc.section,sc.stu_id,st.house from school as sc right join students as st on sc.stu_id=sc.stu_id;


create table emp(
id int,
name varchar(50),
HR int,
age int);

insert into emp values(103,"preet",106,23),
(101,"Divya",103,22),
(102,"shushil",103,23),
(104,"pooja",106,23),
(105,"minal",106,26),
(106,"sangita",106,24);


select * from emp;

select e.id,r.hr,r.id,e.name,e.age from emp as e join emp as r on e.id=r.hr;

select * from school as sc cross join students as st ;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50)
);

CREATE TABLE colors (
    color_id INT PRIMARY KEY,
    color_name VARCHAR(50)
);

INSERT INTO products (product_id, product_name) VALUES
(1, 'T-Shirt'),
(2, 'Mug'),
(3, 'Cap');

INSERT INTO colors (color_id, color_name) VALUES
(1, 'Red'),
(2, 'Blue'),
(3, 'Green');

select product_id,color_name from products cross join colors;

select * from employees;
select distinct(dept_id) from employees;


select * from employees order by salary desc limit 1; -- 1st highest salary
select * from employees order by salary desc limit 1 offset 1; -- 2nd highest salary
select max(salary) from employees;

CREATE TABLE movies ( movie_id INT PRIMARY KEY , movie_name VARCHAR(50),
  rating DECIMAL(3,1) , collection INT , industry VARCHAR(30));
  
INSERT INTO movies
(movie_id, movie_name, rating, collection, industry)
VALUES (1, 'Pushpa', 8.2, 350, 'South'), (2, 'KGF', 9.0, 500, 'South'),(3, 'Dangal', 8.5, 700, 'Bollywood'),(4, 'Pathaan', 7.0, 450, 'Bollywood'),
(5, 'Bahubali', 9.2, 1000, 'South'),(6, 'War', 6.5, 300, 'Bollywood'),(7, 'Leo', 8.8, 600, 'South');


select * from movies where collection = (select max(collection) from movies);
select * from movies where collection = (select min(collection) from movies);
select avg(collection) from movies;
select * from movies where collection >= (select avg(collection) from movies);
select * from movies where rating >= (select avg(rating) from movies);

-- select * from movies order by collection desc limit 1 offset 1;
select * from movies where collection = (select max(collection) from movies where collection < (select max(collection) from movies));
select * from movies where collection > (select max(collection) from movies where movie_name="bahubali");
select * from movies where rating = (select max(rating) from movies where industry="south"); -- It finds the movie(s) with the highest rating among South Indian movies.
select * from movies where collection > (select avg(collection) from movies);
select * from movies where collection = (select min(collection) from movies);
select * from movies where rating = (select max(rating) from movies where rating < (select max(rating) from movies where rating < (select max(rating) from movies))); -- This query finds the 3rd highest distinct rating in the movies table.
select * from movies where industry = "bollywood" and collection < (select collection from movies where rating = (select max(rating) from movies where industry = "South")); -- Find Bollywood movies whose collection is less than the collection of the highest-rated South movie.
select * from movies m1 where collection = (select max(collection) from movies m2 where m1.industry = m2.industry);
-- Correlated subquery :
-- A correlated in SQL is a subquery that depends on the current row of the outer query.
-- in simple words := the inner query runs once for each row processes by the outer query

-- Q1= un movies ko dikhao jinki rating apni industry ki avg rating se zyada hai
select * from movies m1 where rating > (select avg(rating) from movies m2 where m1.industry = m2.industry);

CREATE TABLE employees3 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    city VARCHAR(30),
    salary INT , experience INT );
INSERT INTO employees3
(emp_id, emp_name, department, city, salary, experience)
VALUES
(1, 'Rahul', 'IT', 'Bhopal', 23000, 2),
(2, 'Aman', 'HR', 'Delhi', 45000, 1),
(3, 'Riya', 'IT', 'Mumbai', 67000, 4),
(4, 'Sneha', 'Sales', 'Pune', 40000, 2),
(5, 'Karan', 'Finance', 'Indore', 55000, 3),
(6, 'Priya', 'IT', 'Delhi', 80000, 5),
(7, 'Vikas', 'HR', 'Bhopal', 30000, 1),
(8, 'Neha', 'Sales', 'Mumbai', 45000, 2),
(9, 'Arjun', 'Finance', 'Pune', 60000, 4),
(10, 'Pooja', 'IT', 'Indore', 90000, 6),
(11, 'Rohit', 'Marketing', 'Delhi', 50000, 3),
(12, 'Anjali', 'IT', 'Bhopal', 75000, 5),
(13, 'Sumit', 'HR', 'Mumbai', 32000, 1),
(14, 'Kriti', 'Finance', 'Delhi', 58000, 4),
(15, 'Nikhil', 'Sales', 'Pune', 42000, 2);




select * from employees3;
create view high_salary_it as select * from employees3 where department="it" and salary>=70000;
select * from high_salary_it;
create view avg_salary_dept as select department,avg(salary) as avg,count(*) as emp_count from employees3 group by department;
select * from avg_salary_dept;

create view it_employees as select * from employees3 where department="It";
select * from it_employees;
update employees3 set salary = salary+5000 where emp_id=1;
SHOW FULL TABLES WHERE Table_type = 'VIEW';

CREATE TABLE players (
    player_id INT PRIMARY KEY,
    player_name VARCHAR(50),
    team VARCHAR(50),
    role VARCHAR(30),
    salary_cr DECIMAL(5,2)
);

INSERT INTO players (player_id, player_name, team, role, salary_cr) VALUES
(1, 'Virat Kohli', 'RCB', 'Batsman', 15.00),
(2, 'AB de Villiers', 'RCB', 'Batsman', 11.00),
(3, 'Yuzvendra Chahal', 'RCB', 'Bowler', 6.50),
(4, 'Rohit Sharma', 'MI', 'Batsman', 16.00),
(5, 'Jasprit Bumrah', 'MI', 'Bowler', 12.00),
(6, 'Hardik Pandya', 'MI', 'All-Rounder', 15.00),
(7, 'MS Dhoni', 'CSK', 'Wicket-Keeper', 12.00),
(8, 'Ravindra Jadeja', 'CSK', 'All-Rounder', 16.00),
(9, 'Deepak Chahar', 'CSK', 'Bowler', 5.00),
(10, 'KL Rahul', 'LSG', 'Batsman', 17.00),
(11, 'Rishabh Pant', 'DC', 'Wicket-Keeper', 16.00),
(12, 'Kagiso Rabada', 'DC', 'Bowler', 8.00);


select player_name,team,salary_cr,sum(salary_cr) over() as total_ipl_salary from players;
select player_name,team,salary_cr,sum(salary_cr) over(partition by team order by salary_cr desc ) as total_ipl_salary from players; -- This is a window function query. It calculates the running total of salary for each team.


-- select player_name,team,salary_cr,sum(salary_cr) over(partition by team order by salary_cr desc) as t_ipl from players; -- gives cumilative sum
select * from(select sum(salary_cr) from players) as t_salary;
select player_name,team,salary_cr,rank() over(order by salary_cr) as total_ipl_salary from players;
select player_name,team,salary_cr,dense_rank() over(order by salary_cr) as row_num from players;
select player_name,team,salary_cr,row_number() over(order by salary_cr desc) as total_ipl_salary from players;
select player_name,team,salary_cr,avg(salary_cr) over(partition by team order by salary_cr desc) as avg_ipl_salary from players;

select player_name,team,salary_cr, lag(salary_cr) over(order by salary_cr desc) as row_num from players; -- It sorts all players by salary from highest to lowest and, for each player, shows the salary of the player immediately above them.
select player_name,team,salary_cr, lead(salary_cr) over(order by salary_cr desc) as row_num from players; -- It sorts players by salary from highest to lowest and then, for each player, shows the salary of the player immediately below them.
select player_name,team,salary_cr,
first_value(player_name) over(partition by team order by salary_cr desc) as highest_paid,
last_value(player_name) over(partition by team order by salary_cr desc rows between unbounded preceding and unbounded following) as lowest_paid
 from players;
 
 


CREATE TABLE songs (
    song_id INT PRIMARY KEY,
    title VARCHAR(100),
    artist VARCHAR(100),
    genre VARCHAR(50),
    language VARCHAR(30),
    album VARCHAR(100),
    streams BIGINT,
    rating DECIMAL(3,1),
    release_year INT
);
 
 INSERT INTO songs VALUES
(1, 'Kesariya', 'Arijit Singh', 'Romantic', 'Hindi', 'Brahmastra', 850000000, 9.2, 2022),
(2, 'Levitating', 'Dua Lipa', 'Pop', 'English', 'Future Nostalgia', 920000000, 9.5, 2020),
(3, 'Raataan Lambiyan', 'Jubin Nautiyal', 'Romantic', 'Hindi', 'Shershaah', 780000000, 9.0, 2021),
(4, 'Blinding Lights', 'The Weeknd', 'Pop', 'English', 'After Hours', 980000000, 9.8, 2019),
(5, 'Apna Bana Le', 'Arijit Singh', 'Romantic', 'Hindi', 'Bhediya', 620000000, 8.8, 2022),
(6, 'As It Was', 'Harry Styles', 'Pop', 'English', 'Harrys House', 910000000, 9.4, 2022),
(7, 'Tum Se Hi', 'Mohit Chauhan', 'Romantic', 'Hindi', 'Jab We Met', 540000000, 8.7, 2007),
(8, 'Stay', 'Justin Bieber', 'Pop', 'English', 'Justice', 870000000, 9.1, 2021),
(9, 'Agar Tum Saath Ho', 'Arijit Singh', 'Sad', 'Hindi', 'Tamasha', 700000000, 9.3, 2015),
(10, 'Flowers', 'Miley Cyrus', 'Pop', 'English', 'Endless Summer', 860000000, 9.2, 2023),
(11, 'Channa Mereya', 'Arijit Singh', 'Sad', 'Hindi', 'Ae Dil Hai Mushkil', 690000000, 9.1, 2016),
(12, 'Anti-Hero', 'Taylor Swift', 'Pop', 'English', 'Midnights', 940000000, 9.6, 2022),
(13, 'Kahun Kya', 'Jubin Nautiyal', 'Sad', 'Hindi', 'Bard of Blood', 310000000, 8.5, 2019),
(14, 'Shivers', 'Ed Sheeran', 'Pop', 'English', 'Equal', 830000000, 9.0, 2021),
(15, 'Mann Mera', 'Gajendra Verma', 'Indie', 'Hindi', 'Single', 420000000, 8.6, 2013);

SELECT * FROM songs;

SELECT title, artist, album, streams
FROM songs
WHERE artist = 'Arijit Singh';

CREATE INDEX idx_genre
ON songs(genre);

SHOW INDEX FROM songs;

CREATE UNIQUE INDEX idx_artists -- because Arijit Singh appears multiple times. a unique index requires every value in that column to be unique.
ON songs(artist);  

CREATE UNIQUE INDEX idx_song_title
ON songs(title);

show index from songs;
select * from idx_songs_title;

CREATE INDEX idx_genre_language
ON songs(genre, language);
 
 CREATE FULLTEXT INDEX idx_album_fulltext
ON songs(album);
SELECT *
FROM songs
WHERE MATCH(album)
AGAINST('House');



with dept_avg as (select department,avg(salary) as avg_sal from employees3 group by department)
select * from dept_avg;

select * from 
(select department,avg(salary) as avg_sal from employees3 group by department) as dept_avg where avg_sal>50000;

-- with cte_name as (
-- yahan apni query likho
-- select .....
-- )
-- select * from cte_name;
select * from employees3;
start transaction;
update  employees3 set salary = 20000 where emp_id=1;
savepoint sp1;
update  employees3 set salary = 10000 where emp_id=2;
savepoint sp2;
rollback to sp2;


start transaction;
delete from employees3 where emp_id=3;
savepoint sp1;
delete from employees3 where emp_id=4;
savepoint sp2;
rollback to sp1;



-- ACID property : 
-- ACID Kya Hai? (Overview)
-- ACID ek acronym hai jo 4 properties ko represent karta hai jo ek database Transaction ko "safe" aur "reliable" banati hain:
-- •	A = Atomicity
-- •	C = Consistency
-- •	I = Isolation
-- •	D = Durability

CREATE DATABASE acid_demo; 
USE acid_demo;

CREATE TABLE accounts (
    acc_id INT PRIMARY KEY,
    acc_holder VARCHAR(50),
    balance INT,
    CHECK (balance >= 0)
) ENGINE=InnoDB;

INSERT INTO accounts VALUES
(1, 'Rahul', 10000),
(2, 'Priya', 5000);

SELECT * FROM accounts;

-- 1️⃣ ATOMICITY (Sab Ya Kuch Nahi)
-- Concept
-- "Atomic" ka matlab hota hai "jo tuta na ja sake" — transaction ke andar jitne bhi operations hain, wo sab ek indivisible unit ki tarah treat hote hain. Ya toh saare operations successfully complete honge, ya ek bhi nahi hoga (agar koi ek step fail ho jaye, toh poora transaction rollback ho jaata hai, jaise kuch hua hi nahi).
-- Practical 1: Atomicity Dikhana (Sirf Ek Terminal Chahiye)
START TRANSACTION; 
UPDATE accounts SET balance = balance - 5000 WHERE acc_id = 1;
UPDATE accounts SET balance = balance + 5000 WHERE acc_id = 2;
-- -- Ab yaha check karo (COMMIT se pehle)
SELECT * FROM accounts;
-- Yeh dikhega Rahul=5000, Priya=10000 (changes ho gaye hain, lekin abhi COMMIT nahi kiya).
-- Ab ROLLBACK karke dikhao ki sab wapas chala jaata hai:
ROLLBACK;
SELECT * FROM accounts;
-- ✅ Ab dubara Rahul=10000, Priya=5000 dikhega — matlab dono updates ek saath undo ho gaye. Yehi hai Atomicity — sab ya kuch nahi.
-- 2️⃣ CONSISTENCY (Rules Hamesha Follow Honge)
-- Concept
-- Database hamesha ek "valid state" se dusre "valid state" mein hi jaata hai — matlab jitne bhi rules (constraints, triggers, data types) define kiye gaye hain, transaction se pehle aur baad mein wo hamesha satisfy hone chahiye. Transaction beech mein database ko kabhi bhi inconsistent/invalid state mein nahi chhodni chahiye.

-- Practical 2: Consistency Dikhana (Sirf Ek Terminal Chahiye)
-- sql
START TRANSACTION;

UPDATE accounts SET balance = balance - 15000 WHERE acc_id = 1;  -- Rahul ke paas sirf 10000 hain!

COMMIT;
-- ✅ Yeh error dega:
-- ERROR 4025 (23000): CONSTRAINT `accounts.balance` failed for `acid_demo`.`accounts`
-- Verify karo balance change nahi hua:
-- sql
SELECT * FROM accounts;
-- Balance negative nahi hua, kyunki CHECK constraint ne rok diya — yehi hai Consistency.








-- 3️⃣ ISOLATION (Ek Transaction Doosre Ko Disturb Na Kare)
-- Concept
-- Jab multiple transactions ek saath (parallel) chal rahi hon, toh har transaction aisa behave kare jaise wo akeli chal rahi ho — ek transaction ka incomplete/intermediate data dusri transaction ko dikhna nahi chahiye, jab tak pehli transaction COMMIT na ho jaye.

-- Practical 3: Isolation Dikhana (⚠️ 2 Terminal Windows Chahiye)
-- Yeh wahi hai jisme tumhe do alag MariaDB sessions kholni padengi (jaise 2 users ek saath kaam kar rahe hain).
-- Terminal 1 (User A):
-- bash
-- mysql -u root -p
-- sql
USE acid_demo;
START TRANSACTION;
UPDATE accounts SET balance = balance - 5000 WHERE acc_id = 1;
-- -- Yahi ruk jao, COMMIT mat karo abhi
-- Terminal 2 (User B) — Ek Naya Terminal/CMD Window Kholo:
-- bash
-- mysql -u root -p
-- sql
-- USE acid_demo;
SELECT balance FROM accounts WHERE acc_id = 1;
-- ✅ Terminal 2 mein tumhe purana balance (10000) hi dikhega, kyunki Terminal 1 ka change abhi commit nahi hua — yeh hai Isolation.
-- Ab Terminal 1 Mein Wapas Jao:
-- sql
COMMIT;
-- Terminal 2 Mein Dubara Query Karo:
-- sql
SELECT balance FROM accounts WHERE acc_id = 1;
-- ✅ Ab naya balance (5000) dikhega — kyunki ab commit ho chuka hai.
-- Yeh dikhane ke liye tumhe 2 alag MariaDB CLI windows kholni padengi (ya ek MariaDB client + ek terminal), taaki dono sessions independent chalein.

-- 4️⃣ DURABILITY (Commit Hone Ke Baad Data Permanent Hai)
-- Concept
-- Ek baar jab transaction COMMIT ho jaata hai, toh uska data permanently disk pe save ho jaata hai — chahe uske turant baad power failure, system crash, ya server restart ho jaye, data khona nahi chahiye.

-- Practical 4: Durability Dikhana
-- sql
START TRANSACTION;
UPDATE accounts SET balance = balance - 1000 WHERE acc_id = 1;
COMMIT;

SELECT * FROM accounts;
-- Ab MariaDB service ko restart karo (Windows Services se ya command se):
-- powershell
-- net stop mariadb
-- net start mariadb
-- Fir dubara connect karo aur check karo:
-- sql
-- mysql -u root -p
-- USE acid_demo;
SELECT * FROM accounts;
-- ✅ Balance abhi bhi updated (kam) dikhega — matlab COMMIT ke baad ka data service restart hone ke baad bhi safe raha. Yehi hai Durability.
-- ________________________________________