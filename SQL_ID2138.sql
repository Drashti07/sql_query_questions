/*

Top 2 resturant : use window functions 
top 2 resturant by id : restaurant_id
filter year 2022
SELECT restaurant_id , sales 
Filter actual_delivery_time is not null as a blank value for actual_delivery_time means order is canceled and does not count towards monthly sales


ID 2138
*/
With sales_rank as 
(
    select  do.restaurant_id , SUM(ov.sales_amount) as sales ,
        DENSE_RANK() OVER(ORDER BY SUM(ov.sales_amount) desc) as rnk
    from order_value ov 
    JOIN delivery_orders do 
    ON ov.delivery_id = do.delivery_id
    WHERE do.actual_delivery_time IS NOT NULL AND YEAR(order_placed_time) = 2022
    GROUP BY do.restaurant_id
) 
SELECT restaurant_id , sales
FROM sales_rank
WHERE rnk <=2;