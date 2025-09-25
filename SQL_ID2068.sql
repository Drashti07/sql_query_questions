/*
get product 
- product sale twice that is 2 saparate order
-  unit-weighted average sale = total revernue / unit sold  < 3
- return product_D and brand name



ID 2068
*/
with product_sold as 
(
    SELECT oo.date_sold ,op.product_id , op.brand_name , SUM(oo.cost_in_dollars*  oo.units_sold) As total_cost , SUM(oo.units_sold) As total_unitsold
    FROM online_products op
    JOIN online_orders oo 
        ON op.product_id = oo.product_id
    GROUP BY oo.date_sold ,op.product_id , op.brand_name
)
SELECT product_id  , brand_name --, count(product_id) as n_of_product , brand_name , SUM(total_cost) / SUM(total_unitsold) as avgsold
from product_sold
group by product_id , brand_name
having SUM(total_cost) * 1.0  / SUM(total_unitsold) >=3   AND COUNT(DISTINCT date_sold) >= 2