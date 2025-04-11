create database if not exists F_Keys;
use f_keYS;
 
create table if not exists dept (
id int primary key,
name varchar(50)
);

create table if not exists teacher (
id int primary key,
name varchar(50),
dept_id int,
foreign key (dept_id) references dept(id)
);
-- to drop primary key
-- alter table table_name  drop primary key;
