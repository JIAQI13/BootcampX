select cohorts.name, 
sum(assistance_requests.completed_at-assistance_requests.started_at)/count(assistance_requests.*) as average_assistance_time
from assistance_requests
join students on students.id = assistance_requests.student_id 
join cohorts on cohorts.id = students.cohort_id
group by cohorts.name;