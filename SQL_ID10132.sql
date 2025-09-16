/*
Highest Crime Rate

Easy
ID 10132

Find the number of crime occurrences for each day of the week.
Output the day alongside the corresponding crime count.

Table
sf_crime_incidents_2014_01
*/
select day_of_week , count(*) AS n_occurrences
from sf_crime_incidents_2014_01
group by day_of_week
order by n_occurrences desc;