/*

Highest Market Value Per Sector

Easy
ID 9681

Find the highest market value for each sector.
Output the sector name along with the result.

Table
forbes_global_2010_2014
*/
select sector ,  MAX(marketvalue)  AS max_market_value
from forbes_global_2010_2014
group by sector;