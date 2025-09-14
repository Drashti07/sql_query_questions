/*
Find all businesses which have a phone number listed

Easy
ID 9718

Find all businesses which have a phone number.

Table
sf_restaurant_health_violations

*/
select DISTINCT business_name 
from sf_restaurant_health_violations
where business_phone_number is not null;