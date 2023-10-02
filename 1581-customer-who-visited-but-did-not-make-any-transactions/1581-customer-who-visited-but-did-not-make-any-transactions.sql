/* Write your T-SQL query statement below */
select customer_id,count(v.visit_id) as [count_no_trans] from Visits v 
where visit_id not in (select visit_id from Transactions)
group by customer_id