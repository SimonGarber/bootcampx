select name, email, phone
from students
where end_date is not null
AND github is null