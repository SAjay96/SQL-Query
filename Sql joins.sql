

select * from person
select * from Orders


alter table orders add productname varchar(20)
alter table orders add price int

insert into orders values(1,1001,1,'keyboard',1000)
insert into orders values(2,1002,1,'mouse',990)
insert into orders values(3,1003,5,'laptop',45000)
insert into orders values(4,1004,5,'mobile',10500)
insert into orders values(5,1005,4,'led',10000)
insert into orders values(6,1006,9,'t-shirt',800)
insert into orders values(7,1007,9,'mouse',990)

--inner join
select p.personName,p.country,p.age,o.orderNo,o.productname,o.price,o.orderId
from person p
inner join orders o on o.personId=p.personId

where p.personId=5

--left join
select p.personName,p.country,p.age,o.orderNo,o.productname,o.price,o.orderId
from person p
left join orders o on o.personId=p.personId
where p.personId=5


--right join
select p.personName,p.country,p.age,o.orderNo,o.productname,o.price,o.orderId
from person p
right join orders o on o.personId=p.personId


--full join
select p.personName,p.country,p.age,o.orderNo,o.productname,o.price,o.orderId
from person p
full join orders o on o.personId=p.personId


