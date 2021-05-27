select sum(assistance_requests.completed_at-assistance_requests.started_at)/count(assistance_requests.*) as average_duration
from assistance_requests;
