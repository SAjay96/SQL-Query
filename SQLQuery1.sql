sp_help course1


create table Course1(

Id  int ,
Name varchar(20),
Mobile  int,
constraint pk_Course1 primary key(Id)
)
alter table course1 drop constraint pk_course1

alter table course1 add constraint pk_course1 primary key (mobile)


select * from Course1