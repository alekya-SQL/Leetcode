/* Write your T-SQL query statement below */


select Person_name from 
(
select person_name, row_number() over(order by [Total Weight] desc) as rk from
(
     select Person_id ,person_name,SUm(weight) over(order by turn) as [Total Weight] from Queue
) a  where [Total Weight] <= 1000
) a where rk = 1