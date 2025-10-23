/*

Find the count of verified and non-verified Airbnb hosts


Last Updated: July 2025

Medium
ID 9629


Find how many hosts are verified by the Airbnb staff and how many aren't. Assume that in each row you have a different host.

Table
airbnb_search_details

*/

select host_identity_verified , COUNT(*) as n_hosts 
from airbnb_search_details
group by host_identity_verified;