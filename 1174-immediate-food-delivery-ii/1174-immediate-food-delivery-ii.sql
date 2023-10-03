/* Write your T-SQL query statement below */


select  round( SUM(case when  order_date=customer_pref_delivery_date then 1 else 0 end) *100.0 /(SUM(case when  order_date!=customer_pref_delivery_date then 1 else 0 end ) +
                                                                                             SUM(case when  order_date=customer_pref_delivery_date then 1 else 0 end)),2)as [immediate_percentage]
from
(
select customer_id,order_date,customer_pref_delivery_date,
row_number() over(partition by customer_id order by order_date,customer_pref_delivery_date ) as rk from Delivery
    ) a where rk = 1
