/* Write your T-SQL query statement below */
select * from
(
select id ,movie,description,rating from Cinema
where description !='boring' and id%2 !=0
) a order by rating desc