/*
Products Never Sold


Last Updated: September 2025

Medium
ID 2122

38

The VP of Sales feels that some product categories don't sell and can be completely removed from the inventory.


As a first pass analysis, they want you to find what percentage of product categories have never been sold.

Tables
online_products
online_orders
online_product_categories
*/

With total_catagoris as 
(
    SELECT COUNT( category_id ) as total
    FROM online_product_categories
)  ,
notsold as 
(
    SELECT COUNT(category_id) as not_sold
    FROM online_product_categories
    where category_id not in (
            select  DISTINCT op.product_category 
            from online_products op 
            join online_orders oo on op.product_id = oo.product_id
            )
)
SELECT not_sold*100.0/ total as percentage_of_unsold_categories
FROM total_catagoris , notsold

