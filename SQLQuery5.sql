sp_help Orders


create table Orders(
orderId int,
orderNo int,
personId int,
constraint pk_order primary key(orderId),
constraint pk_order_person foreign key (personId) references Person(personId)
)
alter table Orders add constraint pk_order_person 
foreign key (personId) references Person(personId)

select * from orders