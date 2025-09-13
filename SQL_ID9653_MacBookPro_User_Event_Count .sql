/*



Last Updated: September 2025

Easy
ID 9653 : MacBookPro User Event Count


173

Count the number of user events performed by MacBookPro users.
Output the result along with the event name.
Sort the result based on the event count in the descending order.

Table
playbook_events

*/
select count(*) event_count, event_name
from playbook_events
where lower(device) = 'macbook pro'
group by event_name;