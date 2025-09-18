/*
Find how many people registered in libraries in the year 2016


Easy
ID 9925
Find how many people registered in libraries in the year 2016.
Output the total patrons. Keep in mind that each row represents different patron.

Table
library_usage
*/
select COUNT(*)  total_patrons
from library_usage
where year_patron_registered = 2016;