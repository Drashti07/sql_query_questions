/*

Find the average score for grades A, B, and C

Easy
ID 9693


Find the average score for grades A, B, and C.
Output the results along with the corresponding grade (ex: 'A', avg(score)).

Table
los_angeles_restaurant_health_inspections
*/

select grade , ROUND(AVG(score*1.0),2) as  avg_score
from los_angeles_restaurant_health_inspections
group by grade;