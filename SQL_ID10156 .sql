/*

Number Of Units Per Nationality


Last Updated: September 2025

Medium
ID 10156

202

We have data on rental properties and their owners. Write a query that figures out how many different apartments (use unit_id) are owned by people under 30, broken down by their nationality. We want to see which nationality owns the most apartments, so make sure to sort the results accordingly.

Tables
airbnb_hosts
airbnb_units

*/


select   ah.nationality , COUNT(DISTINCT au.unit_id) as apartment_count
from airbnb_hosts ah
JOIN airbnb_units au on ah.host_id = au.host_id
where age < 30  AND unit_type = 'Apartment'
group by ah.nationality ;