-- to display data betn the range  between and operator 

select * from person where age between 23 and 27

-- in operator  select the multiple possible values
select * from person where personId  in(1,2,3,4)
select * from person where personId not in(1,2,3)
select * from person where country in ('USA','india')
select * from person where country not in ('india')
select * from person where country not in ('USA','Austrelia','UK')

