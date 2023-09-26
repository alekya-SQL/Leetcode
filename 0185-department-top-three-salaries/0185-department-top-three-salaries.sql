/* Write your T-SQL query statement below */


select distinct  Department,Employee,Salary from
(
select d.name as Department,e.name as Employee ,Salary,DENSE_RANK() over(partition by d.name order by salary desc) as rank
from employee e inner join Department d
on e.departmentId = d.id

) a where rank <= 3
order by department,salary,Employee desc