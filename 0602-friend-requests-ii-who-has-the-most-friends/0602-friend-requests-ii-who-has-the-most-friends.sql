/* Write your T-SQL query statement below */

select id, num from
(
select id,num,row_number() over(order by num desc)as rk from
(
select id ,Sum([count]) as num from
(
	select accepter_id as id ,count(accepter_id) as count from  RequestAccepted 
	group by accepter_id
	union all
	select requester_id as id ,count(requester_id) as count from  RequestAccepted 
	group by requester_id
) a group by id
) c 
) e where rk = 1