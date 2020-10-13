SELECT name, avg(duration) -- no need to specify the table bc those columns only belong to one table each
FROM students
JOIN assignment_submissions ON students.id = student_id
WHERE end_date IS NULL
GROUP BY name
ORDER BY avg(duration) DESC;