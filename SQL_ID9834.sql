/*
Combine Workers First and Last Names


Last Updated: September 2025

Easy
ID 9834


Combine the first and last names of workers with a space in-between in a column 'full_name'.

Table
worker
*/

select CONCAT(first_name,' ',last_name) as full_name
from worker;