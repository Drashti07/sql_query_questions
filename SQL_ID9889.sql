/*
Find how many logins Spanish speakers made by country


Last Updated: July 2025

Medium
ID 9889

Find how many logins Spanish speakers made by country.
Output the country along with the corresponding number of logins. Filter out countries without logins.
Order records by the number of logins in descending order.

Tables
playbook_events
playbook_users

*/

select location , COUNT(*) as total
from playbook_events pe
JOIN playbook_users pu on pe.user_id = pu.user_id
where language = 'spanish' and event_name = 'login'
group by location
order by total desc;