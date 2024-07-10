show databases;
use logic_first;
show tables in logic_first;
drop table branch;
drop table employee;
create table branch(
branch_id int primary key auto_increment,
br_name varchar(30) not null,
addr varchar(200));

create table employee(
emp_id int primary key auto_increment,
ename varchar(30)not null,
job_desc varchar(20) default "unassigned",
salary int check(salary>1000),
branch_id int,
constraint fk_branchid foreign key(branch_id) references branch(branch_id));

INSERT INTO branch VALUES(1,"Chennai","16 ABC Road");
INSERT INTO branch VALUES(2,"Coimbatore","120 15th Block");
INSERT INTO branch VALUES(3,"Mumbai","25 XYZ Road");
INSERT INTO branch VALUES(4,"Hydrabad","32 10th Street");

INSERT INTO employee VALUES(1,'Ram','ADMIN',1000000,2);
INSERT INTO employee VALUES(2,'Harini','MANAGER',2500000,2);
INSERT INTO employee VALUES(3,'George','SALES',2000000,1);
INSERT INTO employee VALUES(4,'Ramya','SALES',1300000,2);
INSERT INTO employee VALUES(5,'Meena','HR',2000000,3);
INSERT INTO employee VALUES(6,'Ashok','MANAGER',3000000,1);
INSERT INTO employee VALUES(7,'Abdul','HR',2000000,1);
INSERT INTO employee VALUES(8,'Ramya','ENGINEER',1000000,2);
INSERT INTO employee VALUES(9,'Raghu','CEO',8000000,3);
INSERT INTO employee VALUES(10,'Arvind','MANAGER',2800000,3);
INSERT INTO employee VALUES(11,'Akshay','ENGINEER',1000000,1);
INSERT INTO employee VALUES(12,'John','ADMIN',2200000,1);
INSERT INTO employee VALUES(13,'Abinaya','ENGINEER',2100000,2);
INSERT INTO employee VALUES(14,'Vidya','ADMIN',2200000,NULL);
INSERT INTO employee VALUES(15,'Ranjani','ENGINEER',2100000,NULL);

select * from Branch;
select * from employee;
select branch.br_name, count(employee.emp_id) as coun
from branch
join employee
on branch.branch_id =employee.branch_id
group by employee.branch_id;


select employee.emp_id,employee.ename,employee.job_desc,branch.br_name
from employee
cross join branch
on employee.branch_id = branch.branch_id
order by employee.emp_id;


delete from branch 
where Branch_id=2;
CREATE TABLE clients (
client_id INT PRIMARY KEY AUTO_INCREMENT,
location VARCHAR(30) NOT NULL,
addr VARCHAR(200) );

INSERT INTO clients VALUES(1,"NewYork","25 10th Block");
INSERT INTO clients VALUES(2,"Coimbatore","120 15th Block");
INSERT INTO clients VALUES(3,"London","21 ABC Road");


select * from branch
union all
select * from clients;

