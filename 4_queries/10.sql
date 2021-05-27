select assignments.id , assignments.name, assignments.day,assignments.chapter, count(assistance_requests.*) as t
from assignments
join assistance_requests on assistance_requests.assignment_id= assignments.id
group by assignments.id
order by t desc
;