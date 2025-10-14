/*

Find the most popular sector in the Forbes list


Last Updated: July 2025

Medium
ID 9796


Find the most popular sector from the Forbes list based on the number of companies in each sector.
Output the sector along with the number of companies.

Table
forbes_global_2010_2014

*/

select Top 1 sector , count(company)  as n_companies
from forbes_global_2010_2014
group by sector
order by n_companies desc;