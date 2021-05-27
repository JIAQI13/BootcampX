select count(assistance_requests.*), teachers.name
from teachers
join assistance_requests on teachers.id = assistance_requests.teacher_id and teachers.name = 'Waylon Boehm'
group by teachers.name;