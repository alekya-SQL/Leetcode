/* Write your T-SQL query statement below */
SELECT name
FROM SalesPerson
WHERE sales_id NOT IN 
(
  SELECT sales_id
  FROM Company c
  inner JOIN Orders o on c.com_id=o.com_id
  WHERE name = 'RED'
)