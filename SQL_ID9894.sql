/*
Employee and Manager Salaries


Last Updated: September 2025

Medium
ID 9894


Find employees who are earning more than their managers. Output the employee's first name along with the corresponding salary.

Table
employee

*/
select emp.first_name  , emp.salary employee_salary
from employee emp
JOIN employee mrg 
    on emp.manager_id = mrg.id
where emp.salary > mrg.salary
order by emp.id;