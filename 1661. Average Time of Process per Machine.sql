with processing_time as (
select a.machine_id, a.process_id, (b.timestamp - a.timestamp) as processing_time
from Activity a
join Activity b
on a.machine_id = b.machine_id
and a.process_id = b.process_id
and a.activity_type = 'start'
and b.activity_type = 'end'
)

select machine_id, ROUND(AVG(processing_time),3) as processing_time 
from processing_time
GROUP BY machine_id;
