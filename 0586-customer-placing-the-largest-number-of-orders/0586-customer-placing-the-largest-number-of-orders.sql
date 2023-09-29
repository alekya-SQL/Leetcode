/* Write your T-SQL query statement below */


SELECT customer_number
FROM (
    SELECT customer_number, ROW_NUMBER() OVER (ORDER BY order_count DESC) AS rnk
    FROM (
        SELECT customer_number, COUNT(*) AS order_count
        FROM Orders
        GROUP BY customer_number
    ) AS counted_orders
) AS ranked_orders
WHERE rnk = 1;
