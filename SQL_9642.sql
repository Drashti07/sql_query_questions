/*

Find the unique room types


Last Updated: September 2025

Medium
ID 9642



Find the unique room types(filter room types column). Output each unique room types in its own row.

Table
airbnb_searches


*/


select  DISTINCT value AS room_type
from airbnb_searches
CROSS APPLY STRING_SPLIT(filter_room_types, ',')
where value != '';