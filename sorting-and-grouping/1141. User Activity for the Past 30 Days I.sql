select
activity_date as day, 
count(distinct user_id) as active_users
from activity
where activity_date between date_sub('2019-07-27', INTERVAL 29 DAY) and '2019-07-27'
group by day;
