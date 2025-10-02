/*
Find the total assets of the energy sector


Last Updated: July 2025

Easy
ID 9803

10

Find the total assets of the energy sector.

Table
forbes_global_2010_2014

*/

select SUM(assets) 
from forbes_global_2010_2014
where sector = 'Energy';