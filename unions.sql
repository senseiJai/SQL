create database if not exists unions;
use unions;

create table emp(
id int primary key	,
name varchar(20),
mid int
);
insert into emp (id,name,mid)values
(101,"adam",103),
(102,"bob",104),
(103,"casey",null),
(104,"don",103);

select name
from emp 
union
select name
from emp ;

select name
from emp 
union all
select name
from emp ;