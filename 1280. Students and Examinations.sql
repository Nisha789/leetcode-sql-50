select s.student_id,s.student_name,subj.subject_name,count(e.subject_name) as attended_exams
from students s
cross join 
subjects subj
left join examinations e
on s.student_id = e.student_id and subj.subject_name = e.subject_name
GROUP BY 1,2,3
ORDER BY 1,2
