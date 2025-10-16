/*

Find the total number of available beds per hosts' nationality


Last Updated: September 2025

Medium
ID 10187


Find the total number of available beds per hosts' nationality.
Output the nationality along with the corresponding total number of available beds.
Sort records by the total available beds in descending order.

Tables
airbnb_apartments
airbnb_hosts

*/


select hst.nationality , SUM(n_beds) as n_bed  
from airbnb_apartments AA 
JOIN airbnb_hosts HST ON AA.host_id = HST.host_id
GROUP BY hst.nationality
order by n_bed desc;