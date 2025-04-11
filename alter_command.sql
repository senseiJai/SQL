create database if not exists alter_cmd;
use alter_cmd;
--  drop database if exists alter_cmd;
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

drop table if exists students;
select * from student; -- -- -- -- --

alter table student
ADD COLUMN age int not null default 19;

alter table student
CHANGE COLUMN age stud_age int;

alter table student
MODIFY COLUMN age varchar(2) ;

alter table student 
DROP COLUMN stud_age ;

alter table student
RENAME TO stud;--  RENAMES THE TABLE
select * from stud;

TRUNCATE table student;

