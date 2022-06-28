SELECT cohorts.name, count(cohorts.name) as student_count
FROM students
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(cohorts.name) >= 18
ORDER BY student_count;