/* Write your T-SQL query statement below */


;with data as (
select
*,
lead(id,1,id) over(order by id) as id2,
lead(id,2,id) over(order by id) as id3
from stadium
where people >=100
)

select
id,
visit_date,
people
from data 
where id between 
(select top 1 id from data where id = id2-1 and id2 = id3-1) and 
(select max(id3) from data where id = id2-1 and id2 = id3-1)