create database if not exists constraints;
use constraints;
create table if not exists xyz(
id int primary key, -- constraint type primary key
rollno int unsigned not null, -- constraint type not null  
aadharno bigint unique,
fees int default 100000,
city varchar(50),
age int ,
constraint age_check check (age>=18 and city = "delhi"), -- city can only be delhi and age can only be above 18 
height int check (height>=150)-- height can only be greater than or euqual to 150 
);
insert into xyz (id,rollno,aadharno,fees,city,age,height)values
(2,96,8452,100,"LKO",5,150);-- will not execute 
insert into xyz (id,rollno,aadharno,fees,city,age,height)values
(3,97,0410,50,"LKO",5,149);-- will not execute 
insert into xyz (id,rollno,aadharno,fees,city,age,height)values
(6,196,8452,100,"delhi",5,151);-- will not execute 
insert into xyz (id,rollno,aadharno,fees,city,age,height)values
(7,196,8452,100,"delhi",55,150);-- will execute AS ALL AGE HEIGTH ARE PASSING THE CONSTRAINTS
insert into xyz (id,rollno,aadharno)values
(1,95,5845);-- will execute AS IT IS A NORMAL ENTRY
insert into xyz (id,rollno,aadharno)values
(4,98,1234);-- will execute AS IT IS A NORMAL ENTRY
select * from xyz;
drop table if exists xyz;
truncate table xyz;