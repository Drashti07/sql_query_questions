/*
Easy
ID 10361 :Peak Online Time

You are given a dataset from Amazon that tracks and aggregates user activity on their platform in certain time periods. For each device type, find the time period with the highest number of active users.

The output should contain 'user_count', 'time_period', and 'device_type', where 'time_period' is a concatenation of 'start_timestamp' and 'end_timestamp', like ; "start_timestamp to end_timestamp".

Table
user_activity

*/

SELECT user_count ,  device_type , time_period
FROM (
    select sum(user_count) user_count ,  device_type , CONCAT(
            CONVERT(VARCHAR(19), start_timestamp, 120), ' to ', CONVERT(VARCHAR(19), end_timestamp, 120) ) AS time_period
            , RANK() OVER (PARTITION BY device_type
                           ORDER BY sum(user_count) DESC) AS rnk
    from user_activity
    group by device_type , CONCAT(
            CONVERT(VARCHAR(19), start_timestamp, 120), ' to ',
            CONVERT(VARCHAR(19), end_timestamp, 120)
        )
) A 
where rnk =1 ;


