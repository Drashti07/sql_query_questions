/*
Max(order)  
group by merchant , day
ties multiple merchat share same rank and do not skip rank 


Daily Top Merchants


Medium
ID 2092



You have been asked to find the top 3 merchants for each day with the highest number of orders on that day.


In the event of a tie, multiple merchants may share the same spot, but each day at least one merchant must be in first, second, and third place.


Your output should include the date in the format YYYY-MM-DD, the name of the merchant, and their place in the daily ranking.

Tables
order_details
merchant_details

*/
With oders_day as 
(
    SELECT   md.name , CAST(od.order_timestamp AS DATE)  as order_day
    , DENSE_RANK() OVER(Partition by  CAST(od.order_timestamp AS DATE) order by COUNT(od.ID) desc) as rnk
    FROM  order_details od
    JOIN merchant_details md 
        ON od.merchant_id = md.id 
    GROUP BY md.id ,md.name, CAST(od.order_timestamp AS DATE) 
)
SELECT * 
FROM oders_day
where rnk <=3