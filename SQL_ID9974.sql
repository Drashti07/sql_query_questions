/*
Benefits Of Employees Called Patrick

Easy
ID 9974

Find benefits that people with the name 'Patrick' have.
Output the full employee name along with the corresponding benefits.

Table
sf_public_salaries

*/

select employeename , benefits 
from sf_public_salaries
WHERE LOWER(employeename) LIKE '%patrick%';