create database if not exists college2;
use college2;
create table if not exists student (
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);
insert into student
(rollno,name,marks,grade,city)
values
(101,"anil"		,78,"C","Pune"),
(102,"bhumika"	,93,"A","Mumbai"),
(103,"cheatan"	,85,"B","Mumbai"),
(104,"dhruv"	,96,"A","Delhi"),
(105,"emanuel"	,12,"F","Delhi"),
(106,"farah"	,85,"B","Delhi")
;
select  name,marks from student; -- print selected columnn only 
select distinct city from student; -- prints all values of city without repetition
select*from student; -- prints complete table
-- select with clauses or extra conditions
select * from student where marks>80;
select * from student where city="mumbai";
select * from student where marks<90 and city="mumbai";
select * from student where marks<90 or city="mumbai";
select name,marks from student where (marks+10)>100;
select * from student where marks>90 and city = "mumbai";
select * from student where marks>90 or city = "mumbai";
select * from student where marks>90 or city = "mumbai" LIMIT 3; -- limit the answer 3 outputs only
select * from student where city in ("mumbai","delhi","lko");-- also works if city doesnt exists in table
select * from student where city not  in ("mumbai","delhi","lko");-- also works if city doesnt exists in table
select * from student where marks between 78 and 93; -- both inclusive
select *  from student order by city ASC; -- ascending
select *  from student order by city desc; -- decending
select *  from student order by marks desc limit 3; -- marks of 3 students
select * from student order by marks desc limit 1; -- marks of topper 
-- functions 
select count(rollno) from student;
select max(marks) from student;
select min(marks) from student;
select sum(marks) from student;
select avg(marks) from student;
-- group by clause
select city, count(name)  from student group by city; 
select city,avg(marks) from student group by  city;
select city,avg(marks) from student group by  city order by avg(marks) asc;
-- select mode,count(customer_id) from payment group by mode; -- sample question
select grade , count(rollno) from student group by grade order by grade asc;
-- HAVING CLAUSE
select count(name),city from student group by city having max(marks)>90;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
select city ,count(rollno) from student where grade ="A" group by city having max(marks)>90;
set sql_safe_updates =0;  
update student set grade = "O" where grade = "A";
update student set marks = 82 ,grade = "B" where marks between 80 and 90;
update student set marks = marks +1 ;
select * from student;
update student set marks = 12,grade  = "F" where marks<33 or rollno = 105;
delete from student where marks<33; -- will delete entire row of emanuel
