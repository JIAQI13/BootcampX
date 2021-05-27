select teachers.name,students.name,assignments.name,(assistance_requests.completed_at-assistance_requests.started_at) as duration
from assistance_requests
join teachers on teachers.id = assistance_requests.teacher_id
join students on students.id = assistance_requests.student_id
join assignments on assignments.id = assistance_requests.assignment_id
order by duration;
