/*

fond industry with +ve profit

Find industries that make a profit

Easy
ID 9682

Find all industries with a positive average profit. For those industries extract their lowest sale.
Output the industry along with the corresponding lowest sale and average profit.
Sort the output based on the lowest sales in ascending order.

Table
forbes_global_2010_2014
*/

select industry , min(sales) AS min_sales, AVG(profits) AS avg_profit
from forbes_global_2010_2014
group by industry
having AVG(profits)>0
order by min_sales;