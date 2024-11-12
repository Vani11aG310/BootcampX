SELECT sum(assignment_submissions.duration) as total_duration
from assignment_submissions
JOIN students
ON students.id = assignment_submissions.student_id
JOIN cohorts
ON students.cohort_id = cohorts.id
WHERE cohorts.name = 'FEB12';