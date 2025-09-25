/*
Highest Sales with Promotions


Last Updated: August 2025

Medium
ID 2121


The marketing department is assessing the success of their promotional campaigns.


You have been asked to find which products sold the most units for each promotion.


Your output should contain the promotion ID, product ID, and corresponding total sales for the most successful product ID. In the case of a tie, output all results.

Table
online_orders

*/
SELECT promotion_id , product_id , total_sales 
FROM (
    SELECT promotion_id , product_id ,SUM(units_sold) as total_sales 
            , RANK() OVER( PARTITION BY promotion_id ORDER BY SUM(units_sold) desc) as rnk
    FROM online_orders
    GROUP BY promotion_id , product_id
) a 
WHERE rnk =1