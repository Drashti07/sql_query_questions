/*
Find the profit to sales ratio of Royal Dutch Shell

Easy
ID 9679

What is the profit to sales ratio (profit/sales) of Royal Dutch Shell?
Output the result along with the company name.

Table
forbes_global_2010_2014

*/

select company , profits*1.0/sales AS profit_to_sales_ratio
from forbes_global_2010_2014
where company = 'Royal Dutch Shell';