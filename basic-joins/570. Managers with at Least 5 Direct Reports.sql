select e2.name
from employee e1
join employee e2
on e1.managerId = e2.id 
group by e2.id
having count(e2.id) >= 5;
