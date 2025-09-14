/*
Find the average distance traveled from each origin airport.

Easy
ID 9676

Find the average distance an airplane travels from each origin airport.
Output the result along with the corresponding origin.

Table
us_flights


*/

select  origin , AVG(distance) as avg_distance
from us_flights
GROUP BY origin;