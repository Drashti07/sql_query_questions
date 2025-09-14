/*
Find the number of inspections per day

Easy
ID 9704

Find the number of inspections per day.
Output the result along with the date of the activity.
Order results based on the activity date in the ascending order.

Table
los_angeles_restaurant_health_inspections

*/
select activity_date , COUNT(*)   as n_inspection
from los_angeles_restaurant_health_inspections
group by activity_date
order by activity_date;