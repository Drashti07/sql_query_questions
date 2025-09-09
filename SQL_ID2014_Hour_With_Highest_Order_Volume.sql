/*

Medium
ID 2014 : Hour With The Highest Order Volume


Which hour of the day has the highest average number of orders across all recorded days? Your output should include the hour that satisfies this condition and the corresponding average number of orders per hour. The "order volume" refers to the count of orders placed within each hour of the day.

Table
postmates_orders

    amount:float
    city_id:bigint
    courier_id:bigint
    customer_id:bigint
    id:bigint
    order_timestamp_utc: datetime2
    seller_id: bigint

*/

SELECT TOP 2 DATEPART(HOUR, order_timestamp_utc ) AS order_hour 
 --, CONVERT(Date ,order_timestamp_utc) AS order_date ,
      ,count(courier_id) as avg_orders_cnt
FROM postmates_orders
group by  CONVERT(Date ,order_timestamp_utc) , DATEPART(HOUR, order_timestamp_utc )
order by avg_orders_cnt desc ;