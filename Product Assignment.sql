--Product 

select * from product

alter table product
add primary key (id)

select min(Price) from product
select min(Price)  as minPrice from product

select max(Price) from product
select max(Price)  as maxPrice from product

select count(id) from product
select count(id) as countNo from product

alter table product alter column Price int

select avg(Price) from product
select avg(Price) as avgPrice from product

select sum(Price) from product
select sum(Price) as sumPrice from product