/*



Easy
ID 9757 : Find the genres that yielded the highest sales



20

Find the genres that yielded the highest sales.
Output the genre alongside its total sales.
Order results based on the total sales in descending order.

Table
global_weekly_charts_2013_2014
*/

select genre , sum(total)  total_sales
from global_weekly_charts_2013_2014
group by genre
order by total_sales desc ;