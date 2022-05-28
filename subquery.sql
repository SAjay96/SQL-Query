  select * from employee

  select max(salary) as maxsalary from employee

  select firstname,salary from employee where salary=(select max(salary) from employee)

  select firstname,salary from employee where salary=(
select max(salary) from employee where salary<>(select max(salary) from employee)
)


select firstname,salary from employee where salary=(
select max(salary) from employee where salary<(
select max(salary) from employee where salary<>(select max(salary) from employee)
)
)

select firstname,salary from employee where salary=(
select max(salary) from employee where salary<(
select max(salary) from employee where salary<>(50000)
)
)  

select firstname,salary from employee where salary=(
select max(salary) from employee where salary<(
35000
)
)   

select firstname,salary from employee where salary=(
34998.99
)  

-- subquery with update statement
select * from employee
-- update the salary by 30% of emp who work in dev dept

select * from dept1

update employee set salary=salary*0.30 where deptid =(select deptid from dept1 where deptname='HR')

--subquery with delete statment
delete from employee where deptid=(select deptid from dept1 where deptname='sale')

insert into orders select personId from Person where personId= (select personId from Person where personId in(2,3))

