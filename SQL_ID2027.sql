/*
Company With Most Desktop Users


Last Updated: September 2025

Medium
ID 2027

Write a query that returns the company (customer_id column) with the highest number of users who have only used desktop. Users who may have used mobile at any point are ignored, but companies may still have mobile users.

Table
fact_events

*/


select TOP 2  customer_id  --, client_id , count(id) as cnt
from fact_events
where client_id != 'mobile'
group by customer_id , client_id 
order by count(id) desc;