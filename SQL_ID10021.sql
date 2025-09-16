/*
Find all top-rated wineries based on points


Easy
ID 10021

Find all top-rated wineries based on points.
Consider a top-rated winery has been awarded points more or equal than 95.

Table
winemag_p1
*/
select DISTINCT winery
from winemag_p1
where points >=95;