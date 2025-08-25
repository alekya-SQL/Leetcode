Welcome to my LeetCode SQL Practice Solutions repository! This repository contains my solutions to a wide range of SQL problems from LeetCode. 
Here, you'll find problems that focus on topics such as joins, subqueries, aggregations, window functions, grouping, set operations,CTE's.

Key Skills Demonstrated
In this repository, I demonstrate the following SQL skills:

Query Design: Ability to write complex SQL queries to solve problems.
Joins & Relationships: Extensive use of INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN to link tables and extract relevant information.
Aggregation: Use of GROUP BY, HAVING, and COUNT, SUM, AVG functions for summarizing data.
Subqueries & Nested Queries: Writing and optimizing subqueries and nested queries to solve problems in an efficient manner.
Window Functions: Applying ROW_NUMBER(), RANK(), PARTITION BY, and OVER() for advanced querying and ranking.
Data Transformation: Handling data transformation with CASE, COALESCE, and IFNULL for flexible results.

🚀 Problem List & Approach
Below is a list of SQL problems I’ve solved, along with a brief description of the approach I took for each one:

1. Problem: Get the Second Highest Salary
Approach: Used subqueries and LIMIT/OFFSET to find the second highest salary in a table. Focused on handling scenarios where there could be duplicates.
Skills: Subqueries, DISTINCT.
2. Problem: Rank Employees by Salary
Approach: Applied window functions to rank employees based on their salary within departments, using ROW_NUMBER() and PARTITION BY.
Skills: Window Functions, Ranking.
3. Problem: Employees Who Didn't Receive Bonus
Approach: Used LEFT JOIN to find employees who did not receive any bonus and addressed NULL values.
Skills: Joins, NULL Handling.
4. Problem: Find the Most Common Job Titles
Approach: GROUP BY and ORDER BY used to aggregate and identify the most frequent job titles, applying the COUNT() function.
Skills: Aggregation, Grouping.
5. Problem: Find Missing Records
Approach: Employed LEFT JOIN to find records that exist in one table but not in another, often useful in reconciliation or integrity checks.
Skills: Joins, Missing Data Handling.
6. Problem: Calculate Total Sales Per Product
Approach: GROUP BY with SUM() was used to calculate the total sales per product, along with efficient handling of large data sets.
Skills: Aggregation, SUM, Grouping.
🔧 Tech Stack
SQL Databases: SQL Server.
Tools: LeetCode SQL Editor, DBMS Console, SQL Workbench, PostgreSQL CLI.

Run the SQL queries in your preferred SQL editor (PostgreSQL, MySQL, SQLite) to test the solutions.

Contributions: Feel free to open an issue or create a pull request if you'd like to contribute solutions or suggestions.

🎯 Future Plans
I plan to continue adding more SQL challenges as I solve them, focusing on:

Advanced SQL Concepts.
Performance Benchmarks for real-world data challenges.
Multi-Table Querying and Optimizing Complex Joins.
🌟 Conclusion
This repository not only showcases my ability to solve SQL problems but also demonstrates my commitment to data integrity, optimization, and cleanliness.
I continue to challenge myself with more complex problems to further sharpen my SQL skills.












<!---LeetCode Topics Start-->
# LeetCode Topics
## Database
|  |
| ------- |
| [0176-second-highest-salary](https://github.com/alekya-SQL/Leetcode/tree/master/0176-second-highest-salary) |
| [0177-nth-highest-salary](https://github.com/alekya-SQL/Leetcode/tree/master/0177-nth-highest-salary) |
| [0178-rank-scores](https://github.com/alekya-SQL/Leetcode/tree/master/0178-rank-scores) |
| [0184-department-highest-salary](https://github.com/alekya-SQL/Leetcode/tree/master/0184-department-highest-salary) |
| [0196-delete-duplicate-emails](https://github.com/alekya-SQL/Leetcode/tree/master/0196-delete-duplicate-emails) |
| [0586-customer-placing-the-largest-number-of-orders](https://github.com/alekya-SQL/Leetcode/tree/master/0586-customer-placing-the-largest-number-of-orders) |
| [0596-classes-with-at-least-5-students](https://github.com/alekya-SQL/Leetcode/tree/master/0596-classes-with-at-least-5-students) |
| [0607-sales-person](https://github.com/alekya-SQL/Leetcode/tree/master/0607-sales-person) |
| [0620-not-boring-movies](https://github.com/alekya-SQL/Leetcode/tree/master/0620-not-boring-movies) |
| [1136-actors-and-directors-who-cooperated-at-least-three-times](https://github.com/alekya-SQL/Leetcode/tree/master/1136-actors-and-directors-who-cooperated-at-least-three-times) |
| [1258-article-views-i](https://github.com/alekya-SQL/Leetcode/tree/master/1258-article-views-i) |
| [1268-market-analysis-i](https://github.com/alekya-SQL/Leetcode/tree/master/1268-market-analysis-i) |
| [1541-top-travellers](https://github.com/alekya-SQL/Leetcode/tree/master/1541-top-travellers) |
| [1664-find-users-with-valid-e-mails](https://github.com/alekya-SQL/Leetcode/tree/master/1664-find-users-with-valid-e-mails) |
| [1827-invalid-tweets](https://github.com/alekya-SQL/Leetcode/tree/master/1827-invalid-tweets) |
| [1837-daily-leads-and-partners](https://github.com/alekya-SQL/Leetcode/tree/master/1837-daily-leads-and-partners) |
| [2057-count-salary-categories](https://github.com/alekya-SQL/Leetcode/tree/master/2057-count-salary-categories) |
| [3711-first-letter-capitalization-ii](https://github.com/alekya-SQL/Leetcode/tree/master/3711-first-letter-capitalization-ii) |
| [3792-find-invalid-ip-addresses](https://github.com/alekya-SQL/Leetcode/tree/master/3792-find-invalid-ip-addresses) |
| [3910-find-books-with-no-available-copies](https://github.com/alekya-SQL/Leetcode/tree/master/3910-find-books-with-no-available-copies) |
<!---LeetCode Topics End-->