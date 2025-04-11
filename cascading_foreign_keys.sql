create database if not exists cascading_foreign_keys;
use cascading_foreign_keys;
 
create table if not exists dept (
id int primary key,
name varchar(50)
);
insert into dept (id, name)values
(101,"eng"),
(102,"IT");
update dept set name = 123 where id = 101;



create table if not exists teacher (
id int primary key,
name varchar(50),
dept_id int,
foreign key (dept_id) references dept(id)
on delete cascade
on update cascade
);
insert into teacher (id, name,dept_id)values
(101,"adam",101),
(102,"eve",102);
select * from teacher; 
-- to drop primary key
-- alter table table_name  drop primary key;
