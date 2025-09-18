/*
Highest Salary In Department


Last Updated: August 2025

Medium
ID 9897


Find the employee with the highest salary per department.
Output the department name, employee's first name along with the corresponding salary.

Table
employee

*/

SELECT e.department , e.first_name , e.salary
FROM employee e
JOIN (
select department , MAX(salary)  AS HighestSalary
from employee
group by department ) A on e.department = A.department and e.salary = A.HighestSalary