/*
Find libraries with the highest number of total renewals

Easy
ID 9930

Find the total renewals per library. Output the home_library_definition and its corresponding total number of renewals and order the results by total renewals in descending order.

Table
library_usage
*/
select SUM(total_renewals)  total_patrons , home_library_definition
from library_usage
GROUP BY home_library_definition
ORDER BY total_patrons DESC