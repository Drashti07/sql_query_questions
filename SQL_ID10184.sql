/*

Order all countries by the year they first participated in the Olympics


Last Updated: September 2025

Easy
ID 10184

Order all countries by the year they first participated in the Olympics.


Output the National Olympics Committee (NOC) name along with the desired year.


Sort records in ascending order by year, and alphabetically by NOC.

Table
olympics_athletes_events


*/


SELECT DISTINCT  noc , min(year) as first_time_year
from olympics_athletes_events
group by noc
order by first_time_year , noc;
