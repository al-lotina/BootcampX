SELECT cohorts.name, count(students.*)
FROM cohorts
JOIN  students ON cohorts.id = cohort_id
GROUP BY cohort_name
HAVING count(student.*) >= 18
ORDER BY count(students.*);