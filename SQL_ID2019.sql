/*
Top 2 user wh cal most
o/p : company_id, user_id, , rank
if multiple user keeep all 

Medium
ID 2019 :
Top 2 Users With Most Calls


58

Return the top 2 users in each company that called the most. Output the company_id, user_id, and the user's rank. If there are multiple users in the same rank, keep all of them.

Tables
rc_calls
rc_users
*/

With user_calls as 
    (
    select ru.user_id , ru.company_id , DENSE_RANK() OVER(partition by company_id ORDER BY count(*) desc) as rnk 
    
    from rc_calls  rc 
    JOIN rc_users ru 
        ON  RC.user_id = RU.user_id
    group by ru.user_id , ru.company_id
)
SELECT * 
from user_calls
where rnk <=2