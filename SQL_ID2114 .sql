/*
1. driver's first delivery : min date of delivery will be first delivery_orders
2. % of drivers first-ever completes order has rating of 0
3. actual_delivery_time = null means order cancle and does not count as a complete delivery_orders

First Ever Ratings


Last Updated: August 2025

Medium
ID 2114

46

The company you work for is looking at their delivery drivers' first-ever delivery with the company.


You have been tasked with finding what percentage of drivers' first-ever completed orders have a rating of 0.


Note: Please remember that if an order has a blank value for actual_delivery_time, it has been canceled and therefore does not count as a completed delivery.

Table
delivery_orders
*/
WITH first_delivery AS 
(
    SELECT driver_id , MIN(actual_delivery_time) AS F_DELIVERY 
    FROM delivery_orders
    WHERE actual_delivery_time IS NOT NULL
    GROUP BY driver_id	
)
SELECT      SUM(CASE WHEN o.delivery_rating = 0 then 1 end) *100 / COUNT(*)
FROM first_delivery f
JOIN delivery_orders o on f.driver_id = o.driver_id AND f.f_delivery = o.actual_delivery_time
