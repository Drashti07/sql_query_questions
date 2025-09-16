/*
Find the best publishers based on total sales

Easy
ID 9758

Find the best publishers based on total sales made by each publisher.
Output publishers alongside their total sales.
Order records based on the sales in descending order.

Table
global_weekly_charts_2013_2014
*/
select publisher , sum(total) AS total_sales
from global_weekly_charts_2013_2014
group by publisher
order by total_sales desc;