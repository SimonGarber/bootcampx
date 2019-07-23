select cohorts.name, count(*) as total_submissions
from cohorts 
join students on cohorts.id = students.cohort_id
join assignment_submissions on students.id = assignment_submissions.student_id
group by cohorts.name
order by total_submissions desc;