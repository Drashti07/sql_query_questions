/*

Find industries with the highest market value in Asia


Last Updated: July 2025

Medium
ID 9799


Find industries with the highest market value in Asia.
Output the industry along with the corresponding total market value.

Table
forbes_global_2010_2014

*/

select Top 1 industry , SUM(marketvalue) as  total_marketvalue
from forbes_global_2010_2014
where continent = 'Asia'
group by industry
order by total_marketvalue desc;