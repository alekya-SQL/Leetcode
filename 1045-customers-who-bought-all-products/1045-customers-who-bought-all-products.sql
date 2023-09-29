/* Write your T-SQL query statement below */
SELECT DISTINCT c.customer_id
FROM Customer c
WHERE NOT EXISTS (
    SELECT DISTINCT p.product_key
    FROM Product p
    WHERE NOT EXISTS (
        SELECT 1
        FROM Customer c1
        WHERE c.customer_id = c1.customer_id AND p.product_key = c1.product_key
    )
);
