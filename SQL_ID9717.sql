/*

Find all businesses which have low-risk safety violations

Easy
ID 9717


Find all businesses which have low-risk safety violations.

Table
sf_restaurant_health_violations

*/

select DISTINCT business_name
from sf_restaurant_health_violations
where risk_category = 'Low Risk';