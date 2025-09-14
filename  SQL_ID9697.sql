/*

BAKERY' Owned Facilities

Easy
ID 9697

Find the owner_name and the pe_description of facilities owned by 'BAKERY' where low-risk cases have been reported.

Table
los_angeles_restaurant_health_inspections
*/
select DISTINCT  owner_name , pe_description
from los_angeles_restaurant_health_inspections
WHERE UPPER(owner_name) LIKE '%BAKERY%' AND UPPER(pe_description) LIKE '%LOW%';