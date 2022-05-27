--self join

create table Manager(
id int primary key,
name varchar(20)
)

select * from employee

alter table employee add managerid int

update employee set managerid=1 where empid in(2,3,4)
update employee set managerid=5 where empid in(6,7)
update employee set managerid=8 where empid in(9,10)

select e1.firstname as empname,e2.firstname as ManagerName
from employee e1,employee e2
where e1.managerid=e2.empid



---- find the student id, year who enroll for different course with their year
create table study(
stuId varchar(5),
courseId varchar(5),
year int
)

select * from study
insert into study values('s1','c1',2016)
insert into study values('s2','c2',2017)
insert into study values('s1','c2',2017)

select s1.stuId  as studentno ,s1.courseId as courseno,s1.year
from study s1,study s2
where s1.stuId=s2.stuId   and s1.courseId<>s2.courseId