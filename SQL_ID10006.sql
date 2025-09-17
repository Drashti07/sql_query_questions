/*

Find the average distance traveled in each hour

Easy
ID 10006

Find the average distance traveled in each hour.
Output the hour along with the corresponding average traveled distance.
Sort records by the hour in ascending order.

Table
lyft_rides
*/



select hour , AVG(travel_distance) AS avg_diatance 
from lyft_rides
GROUP BY hour
order by hour;