/*
Facility Zip Codes

Easy
ID 9691


Find all facilities with the zip code 90049, 90034, or 90045.

Table
los_angeles_restaurant_health_inspections

*/ 

select DISTINCT facility_name
from los_angeles_restaurant_health_inspections
where facility_zip in ('90049', '90034', '90045');