/* Write your T-SQL query statement below */
select name from employee inner join
(
  select managerid from employee
  group by managerid
  having count(managerid) >= 5
) a on  a.managerid = id 
