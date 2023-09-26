/* Write your T-SQL query statement below */

 
select distinct  Department,Employee,Salary
from
(
select d.name as Department,e.name as Employee,salary, Dense_Rank() over(Partition by d.name order by salary desc ) as rno from Employee e inner join Department d on
departmentId = d.id
) a where rno=1
    