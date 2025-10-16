/*
o/p produxtname , count transaction
group by product
order by productid asc
ignore product without ransaction 

Product Transaction Count


Last Updated: July 2025

Medium
ID 10163


Find the number of transactions that occurred for each product. Output the product name along with the corresponding number of transactions and order records by the product id in ascending order. You can ignore products without transactions.

Tables
excel_sql_inventory_data
excel_sql_transaction_data

*/
select inv.product_name , count(tra.transaction_id)  as cnt
from excel_sql_inventory_data inv 
JOIN excel_sql_transaction_data tra on inv.product_id = tra.product_id
group by inv.product_id , inv.product_name 
having  count(tra.transaction_id)  >0
order by inv.product_id;