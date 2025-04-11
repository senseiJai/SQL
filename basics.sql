create database college;
create database if not exists college;

drop database college;
drop database if exists college;

use college;

create table students(
id int unsigned primary key,
name varchar(30),
percentage int );

drop table students;
drop table if exists students;

create table students (
rollno int primary key,
name varchar(50)
);

insert into students (id,name,percentage) values(6,"soham",90),(7,"nikhil",95);
--
insert into students values(1,"sidd",45),(2,"jai",99),(3,"don",100);  

select * from students;

show databases;
show tables;