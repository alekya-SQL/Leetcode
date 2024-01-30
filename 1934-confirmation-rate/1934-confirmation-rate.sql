/* Write your T-SQL query statement below */

SELECT s.user_id AS user_id,
       cast(SUM(CASE WHEN action = 'timeout' THEN 0 ELSE 1 END) *1.0 / COUNT(c.user_id) as decimal(10,2)) AS confirmation_rate
FROM Signups s
INNER JOIN Confirmations c ON s.user_id = c.user_id
GROUP BY s.user_id

UNION

SELECT s.user_id,
       0 AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c ON s.user_id = c.user_id
WHERE c.user_id IS NULL;
 


