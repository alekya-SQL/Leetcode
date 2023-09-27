/* Write your T-SQL query statement below */
;with cte
as

(
select email,row_number() over(partition by email order by id,email) as rk from Person
    )
delete  from cte
 where rk >1