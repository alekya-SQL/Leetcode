/* Write your T-SQL query statement below */
select Department,employee,salary from
(
select d.name as Department,e.name as  Employee ,Salary,Dense_rank() over(partition by d.name order by  d.name,salary desc) as ranks
from Department  d inner join Employee  e on e.departmentId  = d.id
   

    ) a where ranks <= 3
    order by  Department,salary desc
  