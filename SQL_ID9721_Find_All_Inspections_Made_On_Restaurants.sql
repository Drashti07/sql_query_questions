/*

Easy
ID 9721 : Find All Inspections Made On Restaurants

Find all inspections made on restaurants and output the business name and the inspection score. For this question business is considered as a restaurant if it contains string "restaurant" inside its name.

Table
sf_restaurant_health_violations

*/

select business_name , inspection_score 
from sf_restaurant_health_violations
where lower(business_name) like '%restaurant%';