create database if not exists constraints;
use constraints;
create table if not exists abc(
id int unique
);
-- OR
create table if not exists xyz (
id int ,
name varchar(50),
 primary key(id)
); 
insert into abc values
(101);
insert into abc values (101); -- error constraint is unique