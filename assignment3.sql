select * from employee



 select * from dept1

alter table employee drop constraint fk_did
alter table employee drop column did

alter table employee add deptid int 

drop table dept1

create table dept1 (
deptid int primary key not null,
deptname varchar(10)
)

insert into  dept1 values(1,'Hr')
insert into  dept1 values(2,'Admin')
insert into  dept1 values(3,'Sale')
insert into  dept1 values(4,'BA')


update employee set deptid=1 where empid in(2,3,4)
update employee set deptid=5 where empid in(6,7)
update employee set deptid=8 where empid in(9,10)

select p.firstname,d.deptname
from employee p
inner join  dept1 d on d.deptid=p.deptid
where d.deptname='sales'

select p.empid,p.firstname,d.deptname,d.deptid
from employee p
left join dept1 d on d.deptid=p.deptid
where d.deptname='sales'
