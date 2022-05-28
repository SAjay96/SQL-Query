select deptname, count(deptid) as empcount from dept1
group by deptname
having deptname in('hr','sale')
order by count(deptid)


select  * from employee

