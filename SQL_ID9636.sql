/*
Cheapest Neighborhood With Real Beds And Internet


Last Updated: August 2025

Medium
ID 9636
.sq1
25

Find a neighborhood where you can sleep on a real bed in a villa with internet while paying the lowest price possible.

Table
airbnb_search_details


*/
select TOP(1) neighbourhood 
from airbnb_search_details
where bed_type = 'Real Bed'AND (amenities like '%Wireless Internet%') AND property_type = 'Villa'
ORDER BY price;