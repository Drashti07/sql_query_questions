/*

AVG(earning)
grpup by order , weekday and hr (customer_placed_order_datetime)

order_total = epresents the gross order total need to clculate net order total
Avg Earnings per Weekday and Hour

Medium
ID 2034


You have been asked to calculate the average earnings per order segmented by a combination of weekday (all 7 days) and hour using the column customer_placed_order_datetime.


You have also been told that the column order_total represents the gross order total for each order. Therefore, you'll need to calculate the net order total.


The gross order total is the total of the order before adding the tip and deducting the discount and refund.


Note: In your output, the day of the week should be represented in text format (i.e., Monday). Also, round earnings to 2 decimals

Table
doordash_delivery

*/

SELECT ROUND(AVG(order_total+tip_amount-(discount_amount+refunded_amount)) ,2) AS  avg_earnings
    , DATENAME(WEEKDAY, customer_placed_order_datetime ) as order_day 
    , DATEPART(Hour , customer_placed_order_datetime ) AS Hr_day
FROM doordash_delivery
group by DATENAME(WEEKDAY, customer_placed_order_datetime )  , DATEPART(Hour , customer_placed_order_datetime );