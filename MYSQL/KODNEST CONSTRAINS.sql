use kodnest;
create table computer(
id int primary key,
name varchar(20) not null,
color varchar(20) unique,
model varchar(40) default 'SS2');
desc computer;

insert into computer
values(2,'ACCER','BLUE','MODEL2');
SELECT * FROM COMPUTER;
update computer
set name ='ASTUF'
where id =1;
Alter table computer drop price;
alter table computer rename to computer_system;
desc computer_system;
alter table computer_system
rename column name to brand;
