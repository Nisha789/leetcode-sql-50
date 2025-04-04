with temp_cte as 
(select num
from MyNumbers
group by num
having count(num)=1)

select ifnull(max(num),NULL) as num from temp_cte
