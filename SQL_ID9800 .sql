/*
Find the total market value for the financial sector


Last Updated: July 2025

Easy
ID 9800

16

Find the total market value for the financial sector.

Table
forbes_global_2010_2014
*/
selectelect SUM(marketvalue) 
from forbes_global_2010_2014
WHERE sector = 'Financials';