/*
filter Fort West and Golden 

Same Brand Purchases


Last Updated: September 2025

Medium
ID 2071

48

The marketing department is aiming its next promotion at customers who have purchased products from two particular brands: Fort West and Golden.


You have been asked to prepare a list of customers who purchased products from both brands.

Tables
online_products
online_orders

*/

    SELECT   customer_id  -- , brand_name 
    FROM online_products op 
    JOIN online_orders oo ON op.product_id = oo.product_id
    WHERE brand_name LIKE 'Fort West' 
    
    INTERSECT 
    
    SELECT   customer_id  --, brand_name 
    FROM online_products op 
    JOIN online_orders oo ON op.product_id = oo.product_id
    WHERE brand_name LIKE  'Golden'
