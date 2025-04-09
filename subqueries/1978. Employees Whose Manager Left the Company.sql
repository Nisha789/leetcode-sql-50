select employee_id
from employees
where salary < 30000
and manager_id not in (select employee_id from employees)
ORDER BY employee_id
