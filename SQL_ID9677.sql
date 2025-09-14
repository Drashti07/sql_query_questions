/*
Count the number of cancelled flights by American Airlines (AA).

Easy
ID 9677

Count the number of cancelled flights by American Airlines (AA).

Table
us_flights
*/

select SUM(cancelled) AS  n_flights 
from us_flights
where unique_carrier = 'AA';