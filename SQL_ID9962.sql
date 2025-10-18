/*

Quarterback Top Ratings


Last Updated: August 2025

Easy
ID 9962


Identify the top 10 ratings received by quarterbacks. Your output should include the quarterback's name and their corresponding rating.

Table
qbstats_2015_2016


*/

select Top 10 qb , rate 
from qbstats_2015_2016
order by rate desc;