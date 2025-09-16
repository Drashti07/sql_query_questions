/*
Customers Who Purchased the Same Product

Medium
ID 2150

In order to improve customer segmentation efforts for users interested in purchasing furniture, you have been asked to find customers who have purchased the same items of furniture.

Output the product_id, brand_name, unique customer ID's who purchased that product, and the count of unique customer ID's who purchased that product. Arrange the output in descending order with the highest count at the top.

Tables
online_orders
online_products
*/
With product as 
(
    select oo.product_id , op.brand_name   , COUNT(DISTINCT oo.customer_id) AS unique_cust_no
    from online_orders oo 
    JOIN online_products op 
        ON oo.product_id = op.product_id
    where product_class = 'FURNITURE'
    group by oo.product_id , op.brand_name
    
)    
select oo.product_id , op.brand_name  , oo.customer_id ,unique_cust_no
from online_orders oo 
JOIN online_products op 
    ON oo.product_id = op.product_id
JOIN product p on p.product_id = oo.product_id
order by unique_cust_no desc


