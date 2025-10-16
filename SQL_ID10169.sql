/*

Highest Total Miles


Last Updated: July 2025

Medium
ID 10169


You’re given a table of Uber rides that contains the mileage and the purpose for the business expense.  You’re asked to find business purposes that generate the most miles driven for passengers that use Uber for their business transportation. Find the top 3 business purpose categories by total mileage.

Table
my_uber_drives


*/

select top 3  purpose ,  SUM(miles) as miles_sum
from my_uber_drives
WHERE purpose IS NOT NULL AND category LIKE '%business%'
group by  purpose
order by miles_sum desc;