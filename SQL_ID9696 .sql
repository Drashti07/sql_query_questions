/*
Check if record_id is unique for every row

Easy
ID 9696
Check if record_id is unique for every row.
Output the total record ids and total unique record ids for comparison.

Table
los_angeles_restaurant_health_inspections

*/
select count(record_id) AS c1 , count(DISTINCT record_id) As c2  
from los_angeles_restaurant_health_inspections;