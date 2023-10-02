/* Write your T-SQL query statement below */
select max(num ) as num from
(
select num from MyNumbers
group by num
having count(1) = 1
    ) a