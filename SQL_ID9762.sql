/*
Find the day of the week that most people check in


Last Updated: September 2025

Medium
ID 9762


Find the day of the week that most people want to check in.
Output the day of the week alongside the corresponding check-in count.

Table
airbnb_contacts

*/


select   DATEPART(weekday, ds_checkin) day_of_week, COUNT(*) checkin_requests
from airbnb_contacts
group by  DATEPART(weekday, ds_checkin)
order by checkin_requests desc;