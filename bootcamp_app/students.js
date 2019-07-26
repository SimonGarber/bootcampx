
const { Pool } = require('pg');


const pool = new Pool({
    user: 'vagrant',
    password: '123',
    host: 'localhost',
    database: 'bootcampx'
});
pool.query(`
select students.id as student_id,students.name as name ,cohorts.name as cohort
from students
join cohorts on cohorts.id = cohort_id
where cohorts.name like '%${process.argv[2]}%'
limit ${process.argv[3] || 5};
`)
.then(res => {
    res.rows.forEach(user => {
        console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);
    })
})
.catch(err => console.error(`query error`, err.stack));
