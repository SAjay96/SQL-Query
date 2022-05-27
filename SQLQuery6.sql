select * from Person
sp_help Person
alter table person add age int not null

alter table person add constraint chk_age check(age>=18)

alter table person drop constraint chk_age

alter table person add country varchar(20) default 'india'

--alter table person add constraint default_con default 'india' for country

--create index index_person on person (name,country);

create unique index index_person2 on person (personId);

drop index perosn.index_person2

alter table person add personId int identity(1,1)


insert into Person values(2,'Aniket','Pune',30,'india')
insert into Person values(1,'Ankit','Pune',30,'india')
insert into Person values(3,'Ajay','Pcmc',26,'india')
insert into Person values(4,'swapnil','Pcmc',35,'india')
insert into Person values(5,'Ganesh','Mumbai',25,'india')
insert into Person values(6,'Mahavir','Thane',21,'india')
insert into Person values(8,'Avinash','Nashik',26,'india')
insert into Person values(7,'swapnil','Pune',35,'india')
insert into Person values(9,'Akshay','Nashik',26,'india')
insert into Person values(10,'Atul','Pune',35,'india')


insert into Person values(13,'Akshay','Nashik',26,null)
insert into Person values(14,'Atul','Pune',35,null)


insert into Person values(11,'emma','Pune',30,'UK')
insert into Person values(12,'jos','london',36,'UK')

update Person set age=25 where personId=3;
update Person set country= 'USA' where personId=7

select country,count(personid) as empcount from person
group by country