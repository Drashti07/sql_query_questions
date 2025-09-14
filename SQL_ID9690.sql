/*
Find all routine inspections where high-risk issues were found

Easy
ID 9690

Find all routine inspections where high-risks issues were found.

Table
los_angeles_restaurant_health_inspections

*/

select * from los_angeles_restaurant_health_inspections
where upper(pe_description) like '%HIGH RISK%' AND service_description = 'ROUTINE INSPECTION';