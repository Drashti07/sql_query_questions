/*
Even-numbered IDs Hired in June


Last Updated: July 2025

Easy
ID 10137

Find employees who started in June and have even-numbered employee IDs.

Table
worke
*/
select * 
from worker
where MONTH(joining_date) = 6 and worker_id % 2 = 0;