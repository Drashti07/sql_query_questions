/*
Patrons Who Renewed Books

Easy
ID 9931

Find the number of patrons who renewed books at least once but less than 10 times in April 2015. Each row is an unique patron.

Table
library_usage

*/

select  COUNT(*) AS n_patrons 
from library_usage
WHERE circulation_active_month = 'April' AND circulation_active_year = 2015 AND
total_renewals < 10 AND total_renewals > 0;