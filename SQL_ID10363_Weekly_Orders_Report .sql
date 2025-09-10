/*

Easy
ID 10363 :Weekly Orders Report

For each week, starting on Sunday, calculate the total quantity across all orders for that week. Include only the orders that are from the first quarter of 2023. The output should contain 'week' and 'quantity'.

Table
orders_analysis

*/

select week , Sum(quantity)  
from orders_analysis
Where Month(week) <= 3
Group by week 
;