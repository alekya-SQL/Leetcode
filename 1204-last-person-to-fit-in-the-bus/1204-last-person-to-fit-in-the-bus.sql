/* Write your T-SQL query statement below */


select top 1 q1.person_name from queue q1 join queue q2 on q1.turn >= q2.turn
group by q1.person_id, q1.person_name, q1.turn
having sum(q2.weight) <= 1000
order by q1.turn desc