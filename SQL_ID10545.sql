/*

Same-Day Orders


Last Updated: September 2025

Hard
ID 10545


Identify users who started a session and placed an order on the same day. For these users, the total number of orders placed on that day and the total order value for that day.


Your output should include the user id, the session date, the total number of orders, and the total order value for that day.

Tables
sessions
order_summary


*/

select user_id , session_date
        ,SUM(case when session_date = order_date then 1 else 0 end ) as total_orders
        , SUM(order_value)
from 
(
    select DISTINCT os.user_id , s.session_date , os.order_value , os.order_date
    from sessions s 
    JOIN order_summary os 
        ON os.user_id = s.user_id
) a
group by user_id , session_date;