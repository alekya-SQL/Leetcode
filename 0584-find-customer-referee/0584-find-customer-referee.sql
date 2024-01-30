/* Write your T-SQL query statement below */
SELECT name FROM customer WHERE referee_id NOT LIKE '2' OR referee_id IS NULL;
--select  name from Customer  where referee_id is null or referee_id !=2
--isnull(referee_id,0) !=2