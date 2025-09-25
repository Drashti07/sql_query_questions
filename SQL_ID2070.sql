/*
Top Three Classes


Last Updated: September 2025

Medium
ID 2070

40

The marketing department wants to identify the top-performing product classes based on the number of orders placed for each class.


If multiple product classes have the same number of sales and qualify for the top 3, include all of them in the output.

Tables
online_products
online_orders


*/
With topproduxt as 
(
    SELECT op.product_class , COUNT(oo.product_id) as n_product , 
        DENSE_RANK() OVER( ORDER BY COUNT(oo.product_id) DESC) as rnk
    FROM online_products op
    JOIN online_orders oo 
        ON op.product_id = oo.product_id
    GROUP BY product_class
) 
SELECT product_class 
FROM topproduxt 
WHERE rnk <=3 