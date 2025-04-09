(select u.name as results
from users u
left join movierating mr
on u.user_id = mr.user_id
group by mr.user_id
order by count(mr.user_id) DESC, u.name ASC LIMIT 1)
UNION ALL
(select m.title as results
from movies m
left join movierating mr
on m.movie_id = mr.movie_id
where mr.created_at BETWEEN '2020-02-01' AND '2020-02-29'
group by mr.movie_id
ORDER BY avg(mr.rating) DESC, m.title ASC LIMIT 1)
