/*
Odd-numbered ID's Hired in February


Last Updated: August 2025

Easy
ID 10136

Find employees who started in February and have odd-numbered employee IDs.

Table
worker
*/
select * 
from worker
where MONTH(joining_date) = 2 and worker_id % 2 != 0;