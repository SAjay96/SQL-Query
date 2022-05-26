sp_help dept
create table dept(  
  deptno     int,  
  dname      varchar(20),  
  location       varchar(20),  
  constraint pk_dept primary key (deptno)  
);
alter table Orders add constraint pk_order_person 
foreign key (personId) references Person(deptno)

select * from dept
