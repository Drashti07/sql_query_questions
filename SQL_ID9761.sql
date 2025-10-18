/*

Find the number of nights that are searching for when trying to book a host


Last Updated: July 2025

Medium
ID 9761


Find the number of nights that are searched by most people when trying to book a host.
Output the number of nights alongside the total searches.
Order records based on the total searches in descending order.

Table
airbnb_searches
*/


select n_nights , SUM(n_searches) as n_searche
from airbnb_searches
group by n_nights
order by n_searche desc;