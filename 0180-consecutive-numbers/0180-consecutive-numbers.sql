/* Write your T-SQL query statement below */
select distinct l1.num as ConsecutiveNums from Logs l1 inner join 
logs l2 on l1.id = l2.id+1
inner join logs l3 on l2.id+1 = l3.id+2
where l1.num = l2.num  and l2.num =l3.num