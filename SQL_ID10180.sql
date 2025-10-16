/*

MIN(SCORE)
WHEE lower(facility_address) LIKE '%hollywood boulevard%'
GROUP BY facility_name


Find the lowest score for each facility in Hollywood Boulevard


Last Updated: August 2025

Medium
ID 10180


Find the lowest score per each facility in Hollywood Boulevard.
Output the result along with the corresponding facility name.
Order the result based on the lowest score in descending order and the facility name in the ascending order.

Table
los_angeles_restaurant_health_inspections
*/



select facility_name,  MIN(SCORE) as min_score
from los_angeles_restaurant_health_inspections
where lower(facility_address) LIKE '%hollywood blvd%'
group by facility_name
order by min_score desc , facility_name asc;