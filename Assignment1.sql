select * from employee

create table employee(
empid int not null,
firstname varchar(20),
lastname varchar(20),
salary int ,
city varchar(20),
deptname varchar(20)
)

alter table employee
add primary key (empid);



insert into  employee values(1,'Aniket','Kalvit',35000,'Pune','HR')
insert into  employee values(2,'Ganesh','Gavhane',45000,'Mumbai','Sales')
insert into  employee values(3,'Anikit','Kale',35600,'Nashik','Finance')
insert into  employee values(4,'Aman','raje',35020,'Pune','Sales')
insert into  employee values(5,'jos ','buttler',39000,'Nagpur','HR')
insert into  employee values(6,'virat','Kohli',35000,'Pune','HR')
insert into  employee values(7,'jaspreet','bumrah',35000,'delhi','Finance')
insert into  employee values(8,'sachin','joshi',35800,'Pcmc','HR')
insert into  employee values(9,'zaheer','Khan',34900,'Punjab','Sales')
insert into  employee values(10,'Mithali','raj',29000,'Mumbai','Finance')

Select * from employee
Select * from employee where deptname='Sales'
select * from employee where salary>=35000
select * from employee where city in ('pune','mumbai')
select * from employee where salary between 25000 and 30000
select * from employee where firstname like 'j%'
select * from employee where firstname like '%n'
select deptname,count(empid) as empcount from employee
group by deptname
Select * from employee where not deptname='HR' and   not deptname='Sales'

select count(deptname) from employee
select count(distinct deptname) from employee

select sum(salary) as Sumsalary from employee
select avg(salary) as Avgsalary from employee

select max(salary) as Maxsalary from employee
select min(salary) as Minsalary from employee


select deptname,count(empid) as empcount from employee
group by deptname

select city,count(empid) as empcount from employee
group by city