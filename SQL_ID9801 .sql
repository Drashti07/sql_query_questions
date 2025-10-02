/*

Find the number of USA companies that are on the list


Last Updated: July 2025

Easy
ID 9801

13

Find the number of USA companies that are on the list.

Table
forbes_global_2010_2014
*/
select COUNT(*) 
from forbes_global_2010_2014
WHERE country = 'United States';