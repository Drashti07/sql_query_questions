/*

Find the country that has the most companies listed on Forbes


Last Updated: July 2025

Medium
ID 9795


Find the country that has the most companies listed on Forbes.

Output the country along with the number of companies.

Table
forbes_global_2010_2014

*/

select Top 1 country , count(company) as  n_companies
from forbes_global_2010_2014
group by country
order by n_companies desc;