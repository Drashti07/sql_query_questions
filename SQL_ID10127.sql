/*
filter : Samantha and Lisa
sum = sales


Calculate Samantha's and Lisa's total sales revenue

Easy
ID 10127

What is the total sales revenue of Samantha and Lisa?

Table
sales_performance

*/


select sum(sales_revenue)
from sales_performance
where salesperson in ('Samantha','Lisa');