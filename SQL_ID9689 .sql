/*

Inspection For Glassell Coffee Shop

Easy
ID 9689

Find all inspection details made for facilities owned by 'GLASSELL COFFEE SHOP LLC'.

Table
los_angeles_restaurant_health_inspections
*/

select * 
from los_angeles_restaurant_health_inspections
where upper(owner_name) = 'GLASSELL COFFEE SHOP LLC';
