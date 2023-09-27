CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
   declare @r int
       select @r=salary from
       (select distinct salary,dense_rank() over(order by salary desc) as nth from Employee) a
       where nth = @N
       return @r

END