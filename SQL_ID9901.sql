/*
Super Managers


Last Updated: August 2025

Medium
ID 9901


Find managers with at least 7 direct reporting employees. In situations where user is reporting to himself/herself, count that also.
Output first names of managers.

Table
employee
*/

select mrg.first_name
from employee emp
JOIN employee mrg on emp.manager_id = mrg.id
group by mrg.id , mrg.first_name
having COUNT(emp.id) >= 7;