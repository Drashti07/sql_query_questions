/*

Proportion Of Total Spend


Last Updated: August 2025

Medium
ID 9899


Calculate the ratio of the total spend a customer spent on each order. Output the customer’s first name, order details, and ratio of the order cost to their total spend across all orders.


Assume each customer has a unique first name (i.e., there is only 1 customer named Karen in the dataset) and that customers place at most only 1 order a day.


Percentages should be represented as decimals

Tables
orders
customers

*/
With totalcustas AS
(
    select  c.id, c.first_name,SUM(o.total_order_cost) AS totalcost
    from orders o 
    JOIN customers c  
        ON c.id = o.cust_id
    group by c.id ,c.first_name

)
select t.first_name , o.order_details ,  CAST(total_order_cost AS float) / totalcost
from totalcustas t 
JOIN orders o 
    on t.id = o.cust_id
