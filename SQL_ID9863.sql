/*
First Record Without LIMIT or ORDER BY


Last Updated: September 2025

Easy
ID 9863


Find the first record of the dataset without using LIMIT or ORDER BY.


Note: The earliest records correspond to the earliest employee ID's.

Table
worker

*/

select * from worker
where worker_id = (select min(worker_id) from worker);