/*




Easy
ID 9749 : Find the most dangerous places in SF



16

Find the most dangerous places in SF based on the crime count per address and district combination.
Output the number of incidents alongside the corresponding address and the district.
Order records based on the number of occurrences in descending order.

Table
sf_crime_incidents_2014_01

*/

select sum(case when incidnt_num is not null then 1 else 0 end )  n_occurences, address ,pd_district
from sf_crime_incidents_2014_01
group by address ,pd_district 
order by n_occurences desc;