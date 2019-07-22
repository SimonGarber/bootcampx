select name, id, email, cohort_id 
from students
where email NOT like '%gmail.com%'
AND phone is null 
