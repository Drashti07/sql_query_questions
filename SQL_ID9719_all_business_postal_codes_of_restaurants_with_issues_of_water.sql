/*

Easy
ID 9719 : Find all business postal codes of restaurants with issues related to the water

Find all business postal codes of restaurants with issues related to the water (violation description contains substring "water").

Table
sf_restaurant_health_violations

*/

select DISTINCT business_postal_code 
from sf_restaurant_health_violations
where lower(violation_description) like '%water%' 