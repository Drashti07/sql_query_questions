/*

Employed at Google

Medium
ID 2077

Find IDs of LinkedIn users who were employed at Google on November 1st, 2021. Do not consider users who started or ended their employment at Google on that day but do include users who changed their position within Google on that day.

Table
linkedin_users
*/

with cte as 
(
    select user_id  ,MAX(start_date) max_start_Date, MAX(end_date) Max_end_Date
    from linkedin_users
    where employer = 'Google' 
    group by user_id
)
select user_id 
from cte 
where max_start_Date >= Max_end_Date or Max_end_Date is null and max_start_Date != '2021-11-01'