update s set sex=case when sex = 'm' then 'f' 
when sex='f' then 'm'  end
from Salary s