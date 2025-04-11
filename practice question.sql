create database if not exists prac_ques;
use prac_ques;

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
(106,"farah"	,85,"B","Delhi");

select * from student;

alter table student
change column name full_name varchar(50);

delete from student where marks<90;

alter table student
drop column grade;