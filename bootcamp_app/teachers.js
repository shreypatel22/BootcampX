const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: 'labber',
  host: 'localhost',
  database: 'bootcampx'
});

const cohort = `${process.argv[2]}` || 'JUL02'
const string = 'SELECT teachers.name as name, cohorts.name as cohort FROM assistance_requests JOIN teachers ON teacher_id = teachers.id JOIN students ON student_id = students.id JOIN cohorts ON cohorts.id = cohort_id WHERE cohorts.name = $1 GROUP BY teachers.name, cohorts.name;';

pool.query(string, [cohort])
.then(res => {
  console.log('connected')
  res.rows.forEach(teacher => {
    console.log(`${teacher.cohort}: ${teacher.name}`);
  })
});


