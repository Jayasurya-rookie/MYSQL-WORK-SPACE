-- create user 'ankit'@'localhost'identified by '1234';
-- grant all privileges on *.*to'ankit'@'localhost';
-- revoke all privileges on *.* from 'ankit'@'localhost';
show databases;
use kodnest;
select * from student;
delimiter //
create procedure fun3(in i int)
begin
select * from student where sid =i;
end
//
call fun3(3);