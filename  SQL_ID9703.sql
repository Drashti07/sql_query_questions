/*

Find the most common grade earned by bakeries

Easy
ID 9703
Find the most common grade earned by bakeries.

Table
los_angeles_restaurant_health_inspections
*/

select TOP 1 grade  --, COUNT(grade) as common_grade
from los_angeles_restaurant_health_inspections
group by grade
order by COUNT(grade) desc;