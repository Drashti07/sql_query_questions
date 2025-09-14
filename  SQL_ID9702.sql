/*
Number Of Unique Facilities And Inspections Per Municipality

Easy
ID 9702

Count the number of unique facilities per municipality zip code along with the number of inspections. Output the result along with the number of inspections per each municipality zip code. Sort the result based on the number of inspections in descending order.

Table
los_angeles_restaurant_health_inspections

*/
select  facility_zip ,COUNT(DISTINCT facility_id)  as no_facilities, count(*) as no_inspections
from los_angeles_restaurant_health_inspections
group by facility_zip
order by no_inspections desc;