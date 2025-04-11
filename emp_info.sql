create database if not exists XYZ;
use XYZ;
create table if not exists emp_info(
id int unsigned primary key,
name varchar(50),
salary bigint not null
);
insert into emp_info 
(id,name,salary)
values
(1,"adam",25000),(2,"bob",30000),(3,"casey",40000);
select * from emp_info;
drop table emp_info; 