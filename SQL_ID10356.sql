/*
Finding Doctors

Easy
ID 10356

Find doctors with the last name of 'Johnson' in the employee list. The output should contain both their first and last names.

Table
employee_list
*/
SELECT first_name, last_name
FROM employee_list
WHERE last_name = 'Johnson' AND profession = 'Doctor';