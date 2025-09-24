/*
Most Sold in Germany


Last Updated: August 2025

Medium
ID 2118

39

Find the product with the most orders from users in Germany. Output the market name of the product or products in case of a tie.

Tables
shopify_orders
shopify_users
dim_product
map_product_order
*/ 
WITH max_sale as 
(
    select dp.prod_sku_id ,dp.market_name , 
            RANK() OVER(ORDER BY COUNT(u.id)  desc) as max_sle 
    from shopify_orders o 
    JOIN shopify_users u on o.user_id = u.id
    JOIN map_product_order po on o.order_id = po.order_id
    JOIN dim_product dp on po.product_id = dp.prod_sku_id
    where u.country = 'Germany'
    GROUP BY dp.prod_sku_id ,dp.market_name
)
SELECT market_name
FROM max_sale
WHERE max_sle =1;