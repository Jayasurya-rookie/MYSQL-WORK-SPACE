show databases;
create database logic_First;
use logic_First;
create table employee(
empid int primary key,
ename varchar(20),
job_desc varchar(30),
salary int);
desc employee;
insert into employee(empid,ename,job_desc,salary) values
(6,'SHIBAL','ADMIN',32000),
(7,'HIM NAE','SALES',22000),
(8,'YEOBOSEYO','MANAGER',15000),
(9,'bangawoyo','HR',16000),
(10,'joh andae','CEO',20000);
select*from employee;
select concat('$.',salary)salary from employee;
Select ucase(ename)from employee;
Select *from employee;
select concat('Rs.',format(salary,0))Salary from employee;
select job_desc from employee;
select *from employee
order by salary DESC;
Select count(*)ceoemploye from employee
where job_desc='ceo';
select max(salary) from employee;
select left(ename,3)
from employee;
alter table employee add column hire_date date;
select*from employee;
update employee
set hire_date='2023-12-03';

select date(now());    
select curdate();
update employee
set hire_date='3-12-2023'
where job_desc ='ADMIN';
alter table employee drop hire_date;
alter table employee add hire_date date;
select*from employee
order by job_desc;
select job_desc, avg(salary)
from employee
group by job_desc;
select job_desc, count(empid)
from employee
group by job_desc; 
select job_desc,
  count(empid) 
from employee
where salary>10000
group by job_desc
having count(empid)>1
order by job_desc;
create table CITY(
ID int primary key,
NAME VARCHAR(17),
job_desc varchar(30),
salary int);
desc employee;




