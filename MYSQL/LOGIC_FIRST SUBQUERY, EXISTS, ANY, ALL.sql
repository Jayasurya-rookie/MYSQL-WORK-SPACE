show databases;

use logic_first;
show tables in logic_first;
select * from employee;
select * from branch;
-- subqueries
select* from employee
where branch_id =(select branch_id from branch where br_name ='chennai');
select * from employee
where branch_id =1;
-- subqueries end


-- exists 
select branch_id,br_name
from branch
where exists(select * from employee
where job_desc="ADMIN" AND branch.branch_id=employee.branch_id) ;

--  any
-- branch in which any employee get more than 25l
select * from branch
where branch_id=any(select branch_id from employee
where salary>2500000);

-- all
-- where employe not working in chennai or coimbatore

select  branch_id from brANCH
where br_name in ('chennai','coimbatore');


select* from employee
where branch_id<> all(select branch_id from branch 
where br_name in ("chennai",'coimbatore'));