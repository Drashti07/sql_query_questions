/*

Most Profitable Financial Company


Last Updated: September 2025

Easy
ID 9663

163

Find the most profitable company from the financial sector. Output the result along with the continent.

Table
forbes_global_2010_2014
*/
select TOP(1) company  , continent
from forbes_global_2010_2014
WHERE sector = 'Financials'
order by profits desc;