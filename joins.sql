create database if not exists joins;
use joins;
create table student(
student_id int,
name varchar(20)
);
insert into student values
(101,"adam"),(102,"bob"),(103,"casey");
create table course(
student_id int,
course varchar(20)
);
insert into course values
(102,"eng"),(105,"maths"),(103,"science"),(107,"cs");

alter table course
change column sid student_id int;
-- 										INNER JOIN 
select * 
from student
INNER JOIN course
on student.student_id = course .student_id;
-- 										INNER JOIN

-- 										LEFT JOIN 
select * 
from student
LEFT JOIN course
on student.student_id = course .student_id;
-- 										LEFT JOIN

-- 										RIGHT JOIN 
select * 
from student
RIGHT JOIN course
on student.student_id = course .student_id;
-- 										RIGHT JOIN

-- 										FULL JOIN
select * 
from student
LEFT JOIN course
on student.student_id = course .student_id
union
select * 
from student
RIGHT JOIN course
on student.student_id = course .student_id;
-- 										FULL JOIN

-- 										LEFT EXCLUSIVE JOIN
SELECT * 
from STUDENT AS S
LEFT JOIN COURSE AS C
ON S.STUDENT_ID = C.STUDENT_ID
WHERE C.STUDENT_ID IS NULL;
-- 										LEFT EXCLUSIVE JOIN

-- 										RIGHT EXCLUSIVE JOIN
SELECT * 
FROM student as s
right join course as c
on s.student_id = c.student_id
where s.student_id is null;
-- 										RIGHT EXCLUSIVE JOIN
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
select * from emp;

-- 										SELF JOIN
select a.name as mangaername ,b.name 
from emp as a 
join emp as b
on a.id = b.mid
;
-- 										SELF JOIN

