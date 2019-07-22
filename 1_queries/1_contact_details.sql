select name,id,cohort_id 
from students
where email is Null OR phone is Null order by name