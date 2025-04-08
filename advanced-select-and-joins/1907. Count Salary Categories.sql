select
'Low Salary' as category, sum(if(income<20000,1,0)) as accounts_count 
from accounts
UNION
select
'Average Salary' as category, sum(if(income>=20000 and income<=50000,1,0)) as accounts_count
from accounts
UNION
select
'High Salary' as category, sum(if(income > 50000,1,0)) as accounts_count
from accounts
