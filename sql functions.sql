-- sql functions

select * from employee
select SUBSTRING('firstname', 0, 3) as stringmane from employee where empid=7
select CONCAT(firstname,'',city)as info from employee
select firstname,LEN(firstname) as length from employee
select UPPER(firstname) as name from employee
select LOWER(firstname) as name from employee
select CAST(salary as  varchar(20))as salary from employee
select REVERSE(firstname) as reversename from employee
select ROUND(34999.99,0) as salary from employee where empid=1

update employee set salary =34999.99 where empid=1

SELECT REPLACE('C# Notes', '#', '+')
SELECT REPLACE(firstname, 'Aniket', 'Vijay') as info from employee where empid=1