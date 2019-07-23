
select cohorts.name, count(*) as student_count
from students join cohorts
on students.cohort_id = cohorts.id
group by cohorts.name
having count(students.*) >= 18
order by student_count;