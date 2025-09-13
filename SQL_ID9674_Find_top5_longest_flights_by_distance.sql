/*




Easy
ID 9674 Find the top 5 longest US flights by distance



21

Find the top 5 longest US flights by distance. Output the result along with the corresponding origin, destination, and distance. If multiple flights exist between the same origin and destination, include only one entry for that airport pair. Return the top 5 longest airport pairs by distance, but include all ties. Sort the flights from longest to shortest.

Table
us_flights


*/

SELECT origin , dest , distance
from (
        
        select DISTINCT origin , dest , distance , DENSE_RANK() OVER(order by distance desc) as dns
        from us_flights
    ) a 
Where dns <= 5
order by distance desc