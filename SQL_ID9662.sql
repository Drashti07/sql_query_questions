/*
List all companies working in the financial sector with headquarters in Europe or Asia


Easy
ID 9662

List all companies working in the financial sector with headquarters in Europe or Asia.

Table
forbes_global_2010_2014
*/
SELECT company from forbes_global_2010_2014
where lower(sector) = 'financials' and continent in ('Asia','Europe');