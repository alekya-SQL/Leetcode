SELECT 
   month,
  country,
 trans_count,
 approved_count,
   trans_total_amount,
   approved_total_amount
FROM
(
    SELECT 
        CAST(DATEPART(yyyy, trans_date) AS VARCHAR(4)) + '-' + RIGHT('00' + CAST(DATEPART(mm, trans_date) AS VARCHAR(2)), 2) AS month,
        country,
        COUNT(id) AS trans_count,
        SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) AS approved_count,
        SUM(amount) AS trans_total_amount,
        SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount
    FROM Transactions
    GROUP BY  
    CAST(DATEPART(yyyy, trans_date) AS VARCHAR(4)) + '-' + 
    RIGHT('00' + CAST(DATEPART(mm, trans_date) AS VARCHAR(2)), 2), country
) a;
