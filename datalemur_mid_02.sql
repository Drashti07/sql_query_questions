/*
datalemur_mid_02
Assume you are given the table below on Uber transactions made by users. Write a query to obtain the third transaction of every user. Output the user id, spend and transaction date.

transactions  Table:
Column Name	      Type
user_id	          integer
spend	            decimal
transaction_date	timestamp
*/

With calcrank as 
(
  SELECT user_id,	spend , transaction_date 
       , DENSE_RANK() OVER(PARTITION BY user_id order by transaction_date) as rnk
  FROM transactions
)
SELECT user_id,	spend , transaction_date 
FROM calcrank
where rnk = 3