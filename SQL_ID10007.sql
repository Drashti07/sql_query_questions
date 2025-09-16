/*
Average Cost Of Each Request

Easy
ID 10007

Find the average cost of each request status.
Request status can be either 'success' or 'fail'.
Output the request status along with the average cost.

Table
uber_ride_requests
*/

select request_status , AVG(monetary_cost*1.0) 
from uber_ride_requests
group by request_status;