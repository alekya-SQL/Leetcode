/* Write your T-SQL query statement below */

select name,bonus from Employee e left join bonus b on e.empid = b.empid
where isnull(bonus,0) < 1000
