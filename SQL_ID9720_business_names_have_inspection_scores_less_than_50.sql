/*


Last Updated: July 2025

Easy
ID 9720 : Find the business names that have inspection scores of less than 50



12

Find the business names that scored less than 50 in inspections.
Output the result along with the corresponding inspection date and the score.

Table
sf_restaurant_health_violations


*/

select DISTINCT business_name , inspection_date , inspection_score
from sf_restaurant_health_violations
where inspection_score < 50;