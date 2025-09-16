/*
Find the total number of searches for houses Westlake neighborhood with a TV

Easy
ID 10122

Find the total number of searches for houses in Westlake neighborhood with a TV among the amenities.

Table
airbnb_search_details

*/
select COUNT(*) AS n_searches
from airbnb_search_details
where lower(neighbourhood) = 'westlake' and UPPER(amenities) like '%TV%';