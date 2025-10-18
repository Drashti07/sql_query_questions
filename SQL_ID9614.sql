/*

Find the average difference between booking and check-in dates


Last Updated: August 2025

Medium
ID 9614


19

Find the average number of days between the booking and check-in dates for AirBnB hosts. Order the results based on the average number of days in descending order.
avg_days_between_booking_and_checkin DESC

Table
airbnb_contacts


*/



select 
id_host,
AVG(DATEDIFF(DAY,ts_booking_at,ds_checkin)) as avg_day_diff
from airbnb_contacts
WHERE ts_booking_at IS NOT NULL
GROUP BY id_host
ORDER BY avg_day_diff DESC