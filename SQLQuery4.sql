

select * from Person
--alter table person alter column personId int not null
--alter table person add constraint pk_person primary key(personid)



create table Orders(
orderId int,
orderNo int,
personId int,
constraint pk_order primary key(orderId),
constraint pk_order_person foreign key (personId) references Person(personId)
)
sp_help Orders
select * from Orders
alter table Orders add constraint pk_order_person 
foreign key (personId) references Person(personId)
