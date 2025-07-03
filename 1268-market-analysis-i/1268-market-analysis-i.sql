/* Write your T-SQL query statement below */
select  User_id as buyer_id,join_date,count(item_id) as orders_in_2019  from users u left join
(select buyer_id,item_id from  orders where  year(order_date) = 2019) o on o.buyer_id = u.user_id

group by User_id,join_date
order by User_id
