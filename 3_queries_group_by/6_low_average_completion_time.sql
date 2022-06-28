SELECT students.name, avg(assignment_submissions.duration), avg(assignments.duration)
FROM assignment_submissions
JOIN assignments ON assignment_id = assignments.id
JOIN students ON student_id = students.id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY avg(assignment_submissions.duration);
