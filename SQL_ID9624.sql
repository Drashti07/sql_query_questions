/*
Accommodates-To-Bed Ratio


Last Updated: July 2025

Medium
ID 9624



Find the average accommodates-to-beds ratio for shared rooms in each city. Sort your results by listing cities with the highest ratios first.

Table
airbnb_search_details


*/
SELECT city , AVG(rto*1.0) as avg_crowdness_ratio
from (
    select   city , accommodates*1.0  / beds as rto
    from airbnb_search_details
    where room_type LIKE '%Shared room%'
    )a
group by city
order by avg_crowdness_ratio desc;