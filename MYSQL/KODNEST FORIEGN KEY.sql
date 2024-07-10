show databases;
use kodnest;
drop table student;
create table student(
sid int primary key,
sname varchar(20));
desc student;
insert into student values
(1,'john'),(2,'jack'),
(3,'riya'),(4,'jogi');
select * from student;
drop table Branch;
create table Branch(bid int primary key,bname varchar(30),sid int,
 foreign key(sid) references student(sid));
 select * from Branch;
 insert into Branch values(5,'EEE',5);
 create table mobileproducts (mid int primary key,mname varchar(30),
 mprice int);
 desc mobileproducts;
 insert into mobileproducts values(1,'jio',4000),(2,'realme',12000),
 (3,'redmi',17000),(4,'oneplus',28000),
 (5,'iphone',30000);
 select*from mobileproducts;
 create view mobile200 as
 select*from mobileproducts where mprice<20000;
 select *from mobile200;
 