/*

Most Recent Employee Login Details


Last Updated: September 2025

Easy
ID 2141

53

Amazon's information technology department is looking for information on employees' most recent logins.


The output should include all information related to each employee's most recent login.

Table
worker_logins
*/
With latest_login as 
(
    select worker_id , MAX(login_timestamp) as  login_timestamp
    from worker_logins
    GROUP BY worker_id
)
SELECT w.id , l.worker_id , l.login_timestamp , w.ip_address ,	w.country	,w.region	,w.city	,w.device_type
from latest_login l 
JOIN worker_logins w on l.worker_id = w.worker_id AND l.login_timestamp = w.login_timestamp