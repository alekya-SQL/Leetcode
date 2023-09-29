/* Write your T-SQL query statement below */


select  s.product_id, first_year, s.quantity, s.price from
(
select  s.product_id,   min(year) as first_year from Sales s inner join product p on p.product_id = s.product_id
 where s.sale_id is not null
group by s.product_id
) a inner join Sales s on s.product_id = a.product_id and s.year = a.first_year