/*

Highest Salary & Full Name


Last Updated: September 2025

Easy
ID 9866


Find the employee(s) earning the highest salary. Your output should include two columns: one for the full name of the employee (first and last name combined) and another for their corresponding salary.

Table
worker


*/

select CONCAT(first_name , ' ' , last_name) AS employee_name , salary
from worker
WHERE salary = (SELECT MAX(salary) FROM worker );