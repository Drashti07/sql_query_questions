/*
Churro Activity Date


Easy
ID 9688



Find the inspection date and risk category (pe_description) of facilities named 'STREET CHURROS' that received a score below 95.

Table
los_angeles_restaurant_health_inspections


*/

select activity_date , pe_description
from los_angeles_restaurant_health_inspections
where upper(facility_name) = 'STREET CHURROS';