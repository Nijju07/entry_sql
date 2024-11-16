create database school;
use school;
create table student(roll_no int,name varchar(15),mark int,grade varchar(5));
insert into student(roll_no,name,mark,grade) values (1,'CRISTIANO',95,'A+'),(2,'MESSI',85,'A'),(3,'NEYMAR',75,'B+'),(4,'MBAPPE',70,'B'),(5,'HALAND',65,'C+');
SELECT * from student;
alter table student
ADD contact int;
alter table student
drop grade;
alter table student rename to CLASSTEN;
truncate classten;
drop table classten;

