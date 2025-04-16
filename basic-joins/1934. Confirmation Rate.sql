with confirmation_rate as (
select s.user_id, count(c.user_id) as total_requests,
sum(case when c.action = 'confirmed' then 1 else 0 end) as confirmed_requests
from signups s
left join
confirmations c
on s.user_id = c.user_id
group by s.user_id
)
select user_id, 
ifnull(round((confirmed_requests/total_requests),2),0) as confirmation_rate
from confirmation_rate;
