/*
Second Highest Salary


Last Updated: September 2025

Medium
ID 10543

20

Identify the second-highest salary in each department.


Your output should include the department, the second highest salary, and the employee ID. Do not remove duplicate salaries when ordering salaries.


For example, if multiple employees share the same highest salary, the second-highest salary will be the next salary that is lower than the highest salaries.

Table
employee_data

*/

WITH ranked_salaries AS
  (SELECT department,
          employee_id,
          salary,
          DENSE_RANK() OVER (PARTITION BY department
                             ORDER BY salary DESC) AS salary_rank
   FROM employee_data)
SELECT department,
       employee_id,
       salary AS second_highest_salary
FROM ranked_salaries
WHERE salary_rank = 2;