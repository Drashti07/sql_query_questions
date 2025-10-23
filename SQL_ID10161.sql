/*
Ranking Hosts By Beds


Last Updated: September 2025

Medium
ID 10161

63

Rank each host based on the number of beds they have listed. The host with the most beds should be ranked 1 and the host with the least number of beds should be ranked last. Hosts that have the same number of beds should have the same rank but there should be no gaps between ranking values. A host can also own multiple properties.
Output the host ID, number of beds, and rank from highest rank to lowest.

Table
airbnb_apartments


*/


select host_id , SUM(n_beds) as number_of_beds , 
DENSE_RANK() OVER(Order by SUM(n_beds)  DESC ) as rank
from airbnb_apartments
GROUP By host_id;