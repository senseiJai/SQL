create database if not exists sql_subQueries;
use sql_subQueries;
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
(105,"emanuel"	,92,"F","Delhi"),
(106,"farah"	,85,"B","Delhi")
;
drop table student;
select * from student;

select name, marks -- -- --  ---        name and marks of students who scored greater than avg
from student 
where marks > 
(select avg(marks) from student);

select name -- -- --  ---        name and marks of students who have even rollno
from student 
where rollno in(
select rollno from student where
rollno% 2 =0);

select max(marks) 
from (select * from student where city = "delhi") as temp;

