/* Write your T-SQL query statement below */
select unique_id,name from  EmployeeUNI  e right join Employees  u on u.id =e.id
 