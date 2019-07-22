select id,name, email, cohort_id, github 
from students 
where github is Null 
order by cohort_id;
