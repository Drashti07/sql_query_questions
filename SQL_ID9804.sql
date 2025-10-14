/*

Find the continent with the highest number of companies


Last Updated: August 2025

Medium
ID 9804

18

Find the continet with the highest number of companies.
Output the continent along with the corresponding number of companies.

Table

*/

select Top 1 continent , count(company) as n_companies 
from forbes_global_2010_2014
group by continent
order by n_companies desc;