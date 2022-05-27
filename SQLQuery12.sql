select * from Person where personName like 'a%'  -- name start with n
select * from person where personName like '%r' -- name end with r
select * from person where personName like '%a%' -- start with & end with any letter having i letter
select * from person where personName like '__k' -- full match letter start with J having next 2 more letters
select * from person where personName like 'j__'

select * from person where personName like '[an]%'


select * from person where personName like '[a-j]%'


select * from Person


select * from person where country is null

select * from person where country is  not null

