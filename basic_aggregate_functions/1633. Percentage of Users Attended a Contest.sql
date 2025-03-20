select 
r.contest_id, 
round((count(r.user_id)/(select DISTINCT count(user_id) from users)*100),2) as percentage
from users u
join  register r
on u.user_id = r.user_id
group by r.contest_id
ORDER by 2 DESC, 1 ASC
