/* Write your T-SQL query statement below */
select p.product_id ,round(ISNULL(Sum(price * units) * 1.00/sum(units),0.00),2) as average_price
from Prices p left join UnitsSold u on p.product_id =u.product_id
and purchase_date between start_date and end_date
group by p.product_id