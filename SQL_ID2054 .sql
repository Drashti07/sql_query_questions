/*

Consecutive Days


Last Updated: September 2025

Hard
ID 2054

105

Find all the users who were active for 3 consecutive days or more.

Table
sf_events

*/
With days as 
(
    select user_id , record_date 
        ,LAG(record_date,1) OVER(PARTITION BY user_id ORDER BY record_date) as Second_day
        ,LAG(record_date,2) OVER(PARTITION BY user_id ORDER BY record_date) as third_day
    from sf_events
)
SELECT user_id
FROM 
(
    SELECT user_id , DATEDIFF(DAY , Second_day , record_date ) as send, DATEDIFF(DAY  ,third_day ,Second_day ) as thrd
    FROM days
) n
WHERE send = 1 AND thrd = 1 ;

