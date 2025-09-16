/*

Find the number of open businesses

Easy
ID 10051


Find the number of open businesses.

Table
yelp_business
*/
select count(business_id) AS business_open
from yelp_business
where is_open =1;