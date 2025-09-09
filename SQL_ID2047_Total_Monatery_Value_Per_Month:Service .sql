/*



Medium
ID 2047 : Total Monatery Value Per Month/Service

Find the total monetary value for completed orders by service type for every month. Output your result as a pivot table where there is a column for month and columns for each service type.

Table
uber_orders

*/


WITH MonetaryValue AS (
    select Month(order_date) as month  , service_name, monetary_value
    from uber_orders
    where status_of_order = 'Completed'
)
SELECT month, Uber_GLAM,
    Uber_KILAT,
    Uber_CLEAN, 
    Uber_SEND, 
    Uber_RIDE, 
    Uber_MASSAGE, 
    Uber_TIX, 
    Uber_MART, 
    Uber_FOOD, 
    Uber_SHOP, 
    Uber_BOX
FROM MonetaryValue
PIVOT
(
    SUM(monetary_value)
    FOR service_name IN (Uber_GLAM,
    Uber_KILAT,
    Uber_CLEAN, 
    Uber_SEND, 
    Uber_RIDE, 
    Uber_MASSAGE, 
    Uber_TIX, 
    Uber_MART, 
    Uber_FOOD, 
    Uber_SHOP, 
    Uber_BOX)
) AS PivotTable;
