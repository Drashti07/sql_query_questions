/*

SELECT FULL_NAME 
FILTER SALARY BETWEEN 50000 AND  100000 INCLUSIVE


Full Names of Employees With Salaries in a Specific Range


Last Updated: September 2025

Easy
ID 9846
SQL_ID9846

Find the full name of workers whose salaries range from 50,000 to 100,000 inclusive.


Output the worker's first name and last name in one column along with their salaries.

Table
worker
*/

select CONCAT(first_name , ' ' , last_name)  AS full_name , salary 
from worker
where salary >=50000 AND salary <=100000;