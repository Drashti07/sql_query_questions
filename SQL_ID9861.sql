/*
select count(employee)
group by department


Total Employees in Each Department


Last Updated: September 2025

Easy
ID 9861


Find the number of employees in each department.


Output the department name along with the corresponding number of employees.

Table
worker
*/

select department , count(worker_id) AS num_of_workers
from worker
group by department ;