/*
First Time Orders



Medium
ID 2093


The company you work with wants to find out what merchants are most popular for new customers.


You have been asked to find how many orders and first-time orders each merchant has had.


First-time orders are meant from the perspective of a customer, and are the first order that a customer ever made. In order words, for how many customers was this the first-ever merchant they ordered with?


Note: Recently, new restaurants have been registered on the system; however, because they may not have received any orders yet, your answer should exclude restaurants that have not received any orders.


Your output should contain the name of the merchant, the total number of their orders, and the number of these orders that were first-time orders.

Tables
order_details
merchant_details
*/
SELECT  name  ,Max(total_order) as total_order
        ,SUM(CASE WHEN order_timestamp = first_order then 1 else 0 end )As first_oder
FROM 
(
    SELECT customer_id  ,md.name , merchant_id , order_timestamp , FIRST_VALUE(order_timestamp) OVER( PARTITION BY customer_id order by order_timestamp ) as first_order , count(*) OVER(partition by md.name ) as total_order 
    FROM order_details od 
    JOIN merchant_details md 
        ON md.id = od.merchant_id
) a
GROUP BY a.name




