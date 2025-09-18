
/*


*/

With order_2020 as 
(
    select user_id , COUNT(id) As ord_2020 
    from amazon_orders
    where YEAR(order_date) = 2020
    group by user_id
    Having COUNT(id) >=3
),
order_2021 as 
(
    select user_id , COUNT(id) AS ord_2021 
    from amazon_orders
    where YEAR(order_date) = 2021
    group by user_id
    Having COUNT(id) >=3

)
SELECT DISTINCT o1.user_id
FROM order_2020 o2
JOIN order_2021 o1 on o2.user_id = o1.user_id