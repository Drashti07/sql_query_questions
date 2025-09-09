/*
Customers Report Summary

Medium
ID 2040 Customers Report Summary



Summarize the number of customers and transactions for each month in 2017, keeping transactions that were greater or equal to $5.

Table
wfm_transactions


*/

select  datepart(month, transaction_date) as date, 
       count(distinct customer_id) as customers, 
       count(distinct transaction_id) as transactions
from wfm_transactions
where YEAR(transaction_date) = 2017  and sales >= 5
group by DATEPART(Month , transaction_date);


