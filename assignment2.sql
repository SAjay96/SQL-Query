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