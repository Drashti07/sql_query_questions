/*


Count(company)
group by indutry
order by #of company desc



Find industries with the highest number of companies


Last Updated: July 2025

Medium
ID 9797


Find industries with the highest number of companies.
Output the industry along with the number of companies.
Sort records based on the number of companies in descending order.

Table
forbes_global_2010_2014

*/


select industry , count(company)  as n_companies
from forbes_global_2010_2014
group by industry
order by n_companies desc;