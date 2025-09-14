/*

Medium
ID 10553 : Finding Purchases

Identify returning active users by finding users who made a second purchase within 7 days or less of any previous purchase. Output a list of these user_id.

Table
amazon_transactions

*/

SELECT DISTINCT user_id
from 
(
    SELECT user_id , DATEDIFF(DAY,trns,created_at) AS next_trns
    from 
    (
        select user_id , created_at  , LAG(created_at) OVER(partition by user_id order by created_at asc)  as trns
        from amazon_transactions
    )a
) b 
where next_trns <=7