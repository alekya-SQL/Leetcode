/* Write your T-SQL query statement below */

SELECT DISTINCT b.Id
FROM Weather a,Weather b
WHERE b.Temperature > a.Temperature
AND DATEDIFF(d,a.Recorddate,b.Recorddate) = 1
