SELECT students.name, avg(duration)
FROM assignment_submissions
JOIN students ON student_id = students.id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY avg(duration) DESC;