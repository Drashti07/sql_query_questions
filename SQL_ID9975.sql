/*

METROPOLITAN TRANSIT AUTHORITY' Employees


Last Updated: July 2025

Easy
ID 9975

Find all employees with a job title that contains 'METROPOLITAN TRANSIT AUTHORITY' and output the employee's name along with the corresponding total pay with benefits.

Table
sf_public_salaries

*/
select employeename , totalpay 
from sf_public_salaries
where upper(jobtitle) like '%METROPOLITAN TRANSIT AUTHORITY%';