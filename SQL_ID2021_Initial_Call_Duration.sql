/*



Medium
ID 2021: Initial Call Duration


 - Redfin helps clients to find agents. Each client will have a unique request_id and each request_id has several calls. For each request_id, the first call is an “initial call” and all the following calls are “update calls”.  What's the average call duration for all initial calls?

    Table
    redfin_call_tracking
    
    
    call_duration:  bigint
    created_on:     datetime2
    id:             bigint
    request_id:     bigint


*/

with calls as 
(
    select request_id , call_duration , DENSE_RANK() over(partition by request_id order by created_on asc) as rnk 
    from redfin_call_tracking
)
select AVG(call_duration)  as duration
from calls 
where rnk = 1


SELECT 1.0*avg(call_duration) as duration
FROM redfin_call_tracking 
where id in(
select min(id) as first_call
from redfin_call_tracking
group by request_id)