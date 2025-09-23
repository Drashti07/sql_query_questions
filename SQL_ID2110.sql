/*
Salary Less Than Twice The Average


Last Updated: September 2025

Medium
ID 2110

Write a query to get the list of managers whose salary is less than twice the average salary of employees reporting to them. For these managers, output their ID, salary and the average salary of employees reporting to them.

Tables
map_employee_hierarchy
dim_employee
*/

With Emp_manager_mapping as 
(
Select  emp.empl_id as employee_id ,emp.manager_empl_id as manager_id , mrg.salary
from map_employee_hierarchy emp
JOIN dim_employee mrg on emp.manager_empl_id = mrg.empl_id
)
, Emps_avg_salary as 
(
 SELECT E.manager_empl_id , AVG(EE.salary) AS avg_salary
 FROM map_employee_hierarchy E 
 JOIN dim_employee EE ON E.empl_id = EE.empl_id
 group by E.manager_empl_id
)
SELECT DISTINCT emp.manager_id , emp.salary as manager_salary , EAS.avg_salary  as avg_employee_salary
FROM Emp_manager_mapping emp 
JOIN Emps_avg_salary EAS ON EAS.manager_empl_id = emp.manager_id
where emp.salary < (EAS.avg_salary*2);