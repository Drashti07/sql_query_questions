/*
Avg Order Cost During Rush Hours


Last Updated: September 2025

Medium
ID 2035

The company you work for has asked you to look into the average order value per hour during rush hours in the San Jose area. Rush hour is from 15H - 17H inclusive.


You have also been told that the column order_total represents the gross order total for each order. Therefore, you'll need to calculate the net order total.


The gross order total is the total of the order before adding the tip and deducting the discount and refund.


Use the column customer_placed_order_datetime for your calculations.

Table
delivery_details

*/

select AVG(order_total+tip_amount-discount_amount-refunded_amount) , DATEPART(HOUR, customer_placed_order_datetime)
from delivery_details
WHERE  delivery_region = 'San Jose' AND DATEPART(HOUR, customer_placed_order_datetime) between 15 AND 17
GROUP BY DATEPART(HOUR, customer_placed_order_datetime);