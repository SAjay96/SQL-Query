select * from customers

create table customers(
custid int not null,
country varchar(20),
city varchar(20),
postalcode int
)
alter table customers
add primary key (custid);


insert into  customers values(1,'India','Mumbai',4110)
insert into  customers values(2,'UK','London',4111)
insert into  customers values(3,'USA','New york',4210)
insert into  customers values(4,'Germany','Berlin',4610)
insert into  customers values(5,'China','Beijing',4150)
insert into  customers values(6,'India','Delhi',4010)
insert into  customers values(7,'China','Tai',3010)
insert into  customers values(8,'UK','Lords',4119)
insert into  customers values(9,'India','Pune',4110)
insert into  customers values(10,'USA','Vegas',4410)

select city from customers 
select  country from customers 
select  distinct country from customers 
select * from customers where custid=9

select city from customers where city='London'
select * from customers where not city='Berlin'
select * from customers  where city='Berlin' and postalcode=4610
select * from customers  where city='Berlin' or city='London'
select * from customers order by city
select * from customers order by city desc
select * from customers order by  country,city
select * from customers where postalcode is null
select * from customers where postalcode is  not null


update customers set city='Oslo',country='Norway'
delete customers where city='Oslo'and country='Norway'

select * from customers where city like 'M%'
select * from customers where city like '%e'
select * from customers where city like '%a%'
select * from customers where city like 'L%n'
select * from customers where city not like 'M%'

select * from customers where city like '_a%'
select * from customers where city like '[bsp]%'
select * from customers where city like '[a-f]%'
select * from customers where city not like '[bsp]%'


select * from customers where country in ('UK','USA')
select * from customers where country not in ('UK','USA')


select * from customers as consumers
select c.custid,c.country,c.city,c.postalcode as pno
from customers c

select count(custid),country
from customers
group by country;

select count(custid),country
from customers
group by country
order by count(custid)


select count(custid),country
from customers
group by country
order by count(custid) desc


create database testdb
drop database testdb