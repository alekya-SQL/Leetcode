/* Write your T-SQL query statement below */
select id, type = case when p_id is null then 'Root' 
                   when id in(select distinct p_id from Tree where p_id is  not null) then 'Inner'
				   when id not in(select distinct p_id from Tree  where p_id is  not null) then 'Leaf' end from Tree