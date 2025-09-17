/*
Find the year that Uber acquired more than 2000 customers through celebrities

Easy
ID 10000

Find the year that Uber acquired more than 2000 customers through advertising using celebrities.

Table
uber_advertising
*/
select DISTINCT year
from uber_advertising
where advertising_channel = 'celebrities' and customers_acquired >2000;