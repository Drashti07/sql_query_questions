/*
Find the average profit for major banks


Last Updated: July 2025

Easy
ID 9798

19

Find the average profit for the industry "Major Banks".

Table
forbes_global_2010_2014


*/
select AVG(profits)
from forbes_global_2010_2014
WHERE industry ='Major Banks';