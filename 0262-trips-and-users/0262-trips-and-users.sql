/* Write your T-SQL query statement below */


--select request_at as Day,cast(Sum(case when  status='cancelled_by_driver' then 1 else 0 end) *1.0/ --Sum(case when  banned='No' then 1 else 0 end)*1.0 as decimal(10,2)) as [Cancellation Rate]
                --  from Trips  t left join Users  u 
                --  on client_id =users_id 
               --   where users_id is not null
--group by  request_at 

select request_at as Day,cast(SUM(case when status like 'cancelled%' then 1 else 0 end)*1.0/
                       count(request_at) as decimal(10,2)) as [Cancellation Rate] from trips where client_id in (select users_id  from users where banned='No')
and driver_id in (select users_id  from users where banned='No')
and request_at BETWEEN '2013-10-01' AND '2013-10-03'
group by 
request_at